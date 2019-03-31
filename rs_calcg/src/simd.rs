use std::arch::x86_64 as asm;

// A type that is four 64 bit integers packed together (256 bits).
pub use asm::__m256i as i256;

/// And 2 integers together.
#[inline(always)]
pub fn i256_and(left: i256, right: i256) -> i256 {
    use asm::_mm256_and_si256;

    unsafe {
        _mm256_and_si256(left, right)
    }
}

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
        if is_x86_feature_detected!("avx") && is_x86_feature_detected!("avx2") {
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
pub fn simd_and(a: [i64; 32], b: [i64; 32], v: usize) -> [i64; 32] {
    #[cfg(all(any(target_arch = "x86", target_arch = "x86_64"), feature = "use-simd"))]
    {
        if is_x86_feature_detected!("avx") && is_x86_feature_detected!("avx2") {
            return simd_and_x86(a, b, v);
        }
    }
    simd_and_fallback(a, b, v)
}

/// Check if `a = b` for exactly `v` bits.
pub fn simd_eq(a: [i64; 32], b: [i64; 32], v: usize) -> bool {
    #[cfg(all(any(target_arch = "x86", target_arch = "x86_64"), feature = "use-simd"))]
    {
        if is_x86_feature_detected!("avx") && is_x86_feature_detected!("avx2") {
            return simd_eq_x86(a, b, v);
        }
    }
    simd_eq_fallback(a, b, v)
}

pub fn simd_is_zero(a: [i64; 32], v: usize) -> bool {
    #[cfg(all(any(target_arch = "x86", target_arch = "x86_64"), feature = "use-simd"))]
    {
        if is_x86_feature_detected!("avx") && is_x86_feature_detected!("avx2") {
            return simd_eq_x86(a, [0; 32], v);
        }
    }
    simd_eq_fallback(a, [0; 32], v)
}

/// & on X86 SIMD
#[cfg(all(any(target_arch = "x86", target_arch = "x86_64"), feature = "use-simd"))]
fn simd_and_x86(a: [i64; 32], b: [i64; 32], _v: usize) -> [i64; 32] {
    for i in 0..8 {
        let j = i << 2; // multiply by 4.
        // Build SIMD types.
        let c = unsafe {
            asm::_mm256_set_epi64x(a[j], a[j+1], a[j+2], a[j+3])
        };
        let d = unsafe {
            asm::_mm256_set_epi64x(b[j], b[j+1], b[j+2], b[j+3])
        };
        // And The Values together.
        let e = unsafe {
            asm::_mm256_and_si256(c, d)
        };
        // 
        let f = unsafe {
            
        };
    }


    unimplemented!();
}

/// == on X86 SIMD
#[cfg(all(any(target_arch = "x86", target_arch = "x86_64"), feature = "use-simd"))]
fn simd_eq_x86(_a: [i64; 32], _b: [i64; 32], _v: usize) -> bool {
    unimplemented!();
}

/// Fallback & on X86 SIMD
fn simd_and_fallback(mut a: [i64; 32], b: [i64; 32], _v: usize) -> [i64; 32] {
    for i in 0..32 {
        a[i] &= b[i];
    }

    a
}

/// Fallback == on X86 SIMD
fn simd_eq_fallback(a: [i64; 32], b: [i64; 32], v: usize) -> bool {
    let integers = v / 64;
    let bitsleft = v % 64;

    for i in 0..32 {
        // Will be zero when equal.
        let c = a[i] ^ b[i];

        //        println!("A; {:b}\n B; {:b}\n C; {:b}", a[i], b[i], c);

        if i == integers {
            let one: i64 = unsafe {
                std::mem::transmute(
                    0b11111111_11111111_11111111_11111111_11111111_11111111_11111111_11111111u64
                )
            };
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
}
