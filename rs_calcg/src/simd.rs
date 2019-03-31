use std::arch::x86_64 as asm;

fn is_simd_enabled() -> bool {
    is_x86_feature_detected!("avx") && is_x86_feature_detected!("avx2")
        && is_x86_feature_detected!("sse4.1")
}

// A type that is four 64 bit integers packed together (256 bits).
pub use asm::__m256i as i256;

/// Returns zero.
#[inline(always)]
pub fn i256_zero() -> i256 {
    use asm::_mm256_setzero_si256;

    unsafe {
        _mm256_setzero_si256()
    }
}

/// Print whether or not SIMD is enabled.
pub fn print_enabled() {
    #[cfg(all(any(target_arch = "x86", target_arch = "x86_64"), feature = "use-simd"))]
    {
        if is_simd_enabled() {
            println!("SIMD Enabled");
            return;
        }
        println!("SIMD Not Supported (no avx2)");
        return;
    }
    #[cfg(not(all(any(target_arch = "x86", target_arch = "x86_64"), feature = "use-simd")))]
    {
        println!("SIMD Disabled");
    }
}

/// Calculate `a & b` for at least `v` bits.
pub fn simd_and(a: [u64; 32], b: [u64; 32], v: usize) -> [u64; 32] {
    #[cfg(all(any(target_arch = "x86", target_arch = "x86_64"), feature = "use-simd"))]
    {
        if is_simd_enabled() {
            return simd_and_x86(a, b, v);
        }
    }
    simd_and_fallback(a, b, v)
}

/// Check if `a = b` for exactly `v` bits.
pub fn simd_eq(a: [u64; 32], b: [u64; 32], v: usize) -> bool {
    #[cfg(all(any(target_arch = "x86", target_arch = "x86_64"), feature = "use-simd"))]
    {
        if is_simd_enabled() {
            return simd_eq_x86(a, b, v);
        }
    }
    simd_eq_fallback(a, b, v)
}

pub fn simd_is_zero(a: [u64; 32], v: usize) -> bool {
    simd_eq(a, [0; 32], v)
}

/// & on X86 SIMD
#[cfg(all(any(target_arch = "x86", target_arch = "x86_64"), feature = "use-simd"))]
fn simd_and_x86(mut a: [u64; 32], b: [u64; 32], _v: usize) -> [u64; 32] {
    let mut rtn = [0; 32];
    for i in 0..8 {
        let j = i << 2; // multiply by 4.
        // Build SIMD types.
        let c = unsafe {
            asm::_mm256_loadu_si256(&a[j] as *const _ as *const _)
        };
        let d = unsafe {
            asm::_mm256_loadu_si256(&b[j] as *const _ as *const _)
        };
        // And The Values together.
        let e = unsafe {
            asm::_mm256_and_si256(c, d)
        };
        // Write back to a
        unsafe {
            asm::_mm256_storeu_si256(&mut rtn[j] as *mut _ as *mut _, e)
        }
    }

    rtn
}

/// Fallback & on X86 SIMD
fn simd_and_fallback(mut a: [u64; 32], b: [u64; 32], _v: usize) -> [u64; 32] {
    for i in 0..32 {
        a[i] &= b[i];
    }

    a
}

/// == on X86 SIMD
#[cfg(all(any(target_arch = "x86", target_arch = "x86_64"), feature = "use-simd"))]
fn simd_eq_x86(a: [u64; 32], b: [u64; 32], v: usize) -> bool {
    println!("A: {} B: {}", a[0], b[0]);

    let integers = v / 256;
    let bitsleft = v % 256;
    let shiftbyte = bitsleft / 128;
    let shiftbits = bitsleft % 128; // WRONG.

    for i in 0..8 {
        let j = i << 2; // multiply by 4.
        // Build SIMD types.
        let aa = unsafe {
            asm::_mm256_loadu_si256(&a[j] as *const _ as *const _)
        };
        let bb = unsafe {
            asm::_mm256_loadu_si256(&b[j] as *const _ as *const _)
        };
        // Will be zero when equal.
        let c = unsafe {
            asm::_mm256_xor_si256(aa, bb)
        };

        if i == integers {
            let mut bytes: [u128; 2] = [std::u128::MAX; 2];
            if shiftbyte == 1 {
                bytes[1] >>= 128 - shiftbits;
            } else { // shiftbyte == 0
                bytes[0] >>= 128 - shiftbits;
                bytes[1] = 0;
            }
            let mask = unsafe { asm::_mm256_loadu_si256(&bytes[0] as *const _ as *const _) };

            let mut z = [0u64; 2];
            unsafe {
                asm::_mm256_storeu_si256(&mut z[j] as *mut _ as *mut _, c)
            }
            dbg!(bytes[0]);
            dbg!(z[0]);

            // If `c` does not equal zero, return false.
            if unsafe { asm::_mm256_testz_si256(c, mask) } == 0 {
                println!("Not Equal");
                return false;
            } else {
                println!("Is Equal");
                return true; // Early Return.
            }
        } else {
            let bytes: [u128; 2] = [std::u128::MAX; 2];
            let mask = unsafe { asm::_mm256_loadu_si256(&bytes[0] as *const _ as *const _) };

            // If `c` does not equal zero, return false.
            if unsafe { asm::_mm256_testz_si256(c, mask) } == 0 {
                return false;
            }
        }
    }

    return true;
}

/// Fallback == on X86 SIMD
fn simd_eq_fallback(a: [u64; 32], b: [u64; 32], v: usize) -> bool {
    let integers = v / 64;
    let bitsleft = v % 64;

    for i in 0..32 {
        // Will be zero when equal.
        let c = a[i] ^ b[i];

        if i == integers {
            let one = 0b11111111_11111111_11111111_11111111_11111111_11111111_11111111_11111111u64;
            let trim = one >> (64 - bitsleft);

            if c & trim != 0 {
                return false;
            } else {
                return true;
            }
        } else if c != 0 {
            return false;
        }
    }

    return true;
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn check_simd_eq_fallback() {
        let mut a = [0xFFFFFFFF_FFFFFFFFu64; 32];
        let mut b = [0u64; 32];

        a[0] = 0b11100011_11111111_11111111_10000000_11111111_11111111_10001101_11111111u64;
        a[1] = 0b11110000_11111111_11111111_11111111_11111111_11111111_11111111_11110000u64;
        b[0] = 0b11100011_11111111_11111111_10000000_11111111_11111111_10001101_11111111u64;
        b[1] = 0b00001111_11111111_11111111_11111111_11111111_11111111_11111111_11110000u64;

        assert_eq!(simd_eq_fallback(a, b, 84), true);

        a[0] = 0b11100011_11111111_11111111_10000000_11111111_11111111_10001101_11111110u64;

        assert_eq!(simd_eq_fallback(a, b, 84), false);
    }

    #[test]
    fn check_trivial_simd_eq_fallback() {
        let mut a = [0u64; 32];
        let mut b = [0u64; 32];

        a[0] = 0b111;
        b[0] = 0b101;

        assert_eq!(simd_eq_fallback(a, b, 3), false);
    }

    #[cfg(all(any(target_arch = "x86", target_arch = "x86_64"), feature = "use-simd"))]
    #[test]
    fn check_simd_eq() {
        let mut a = [0xFFFFFFFF_FFFFFFFFu64; 32];
        let mut b = [0u64; 32];

        a[0] = 0b11100011_11111111_11111111_10000000_11111111_11111111_10001101_11111111u64;
        a[1] = 0b11110000_11111111_11111111_11111111_11111111_11111111_11111111_11110000u64;
        b[0] = 0b11100011_11111111_11111111_10000000_11111111_11111111_10001101_11111111u64;
        b[1] = 0b00001111_11111111_11111111_11111111_11111111_11111111_11111111_11110000u64;

        assert_eq!(simd_eq_x86(a, b, 84), true);

        a[0] = 0b11100011_11111111_11111111_10000000_11111111_11111111_10001101_11111110u64;

        assert_eq!(simd_eq_x86(a, b, 84), false);
    }

    #[cfg(all(any(target_arch = "x86", target_arch = "x86_64"), feature = "use-simd"))]
    #[test]
    fn check_trivial_simd_eq() {
        let mut a = [0u64; 32];
        let mut b = [0u64; 32];

        a[0] = 0b111;
        b[0] = 0b101;

        assert_eq!(simd_eq_x86(a, b, 3), false);

        a[0] = 0b101;
        b[0] = 0b101;

        assert_eq!(simd_eq_x86(a, b, 3), true);
    }

    #[cfg(all(any(target_arch = "x86", target_arch = "x86_64"), feature = "use-simd"))]
    #[test]
    fn check_simd_and() {
        let mut a = [0u64; 32];
        let mut b = [0u64; 32];

        a[0] = 0b111;
        b[0] = 0b101;

        a = simd_and_x86(a, b, 3);

        assert_eq!(a[0], 0b101);

        b[0] = 0b010;

        a = simd_and_x86(a, b, 3);

        assert_eq!(a[0], 0b000);
    }

    #[test]
    fn check_simd_and_fallback() {
        let mut a = [0u64; 32];
        let mut b = [0u64; 32];

        a[0] = 0b111;
        b[0] = 0b101;

        a = simd_and_fallback(a, b, 3);

        assert_eq!(a[0], 0b101);
    }

    #[cfg(all(any(target_arch = "x86", target_arch = "x86_64"), feature = "use-simd"))]
    #[test]
    fn check_weird_simd_eq() {
        let a = [0b1011_11000u64; 32];
        let b = [0b1011_11001u64; 32];

        assert!(!simd_eq_x86(a, b, 5));
    }

    #[cfg(all(any(target_arch = "x86", target_arch = "x86_64"), feature = "use-simd"))]
    #[test]
    fn check_simd_zero() {
        let mut a = [0; 32];

        a[0] = 0b110000;

        assert!(!simd_eq_x86(a, [0;32], 6));
    }
}
