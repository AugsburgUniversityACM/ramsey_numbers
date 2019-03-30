/// Print whether or not SIMD is enabled.
pub fn print_enabled() {
    #[cfg(all(any(target_arch = "x86", target_arch = "x86_64"), feature = "use-simd"))]
    {
        if is_x86_feature_detected!("ssse3") {
            println!("SIMD Enabled");
            return;
        }
        println!("SIMD Not Supported (no ssse3)");
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
        if is_x86_feature_detected!("ssse3") {
            return simd_and_x86(a, b, v);
        }
    }
    simd_and_fallback(a, b, v)
}

/// Check if `a = b` for exactly `v` bits.
pub fn simd_eq(a: [u64; 32], b: [u64; 32], v: usize) -> bool {
    #[cfg(all(any(target_arch = "x86", target_arch = "x86_64"), feature = "use-simd"))]
    {
        if is_x86_feature_detected!("ssse3") {
            return simd_eq_x86(a, b, v);
        }
    }
    simd_eq_fallback(a, b, v)
}

pub fn simd_is_zero(a: [u64; 32], v: usize) -> bool {
    #[cfg(all(any(target_arch = "x86", target_arch = "x86_64"), feature = "use-simd"))]
    {
        if is_x86_feature_detected!("ssse3") {
            return simd_eq_x86(a, [0; 32], v);
        }
    }
    simd_eq_fallback(a, [0; 32], v)
}

/// & on X86 SIMD
fn simd_and_x86(a: [u64; 32], b: [u64; 32], v: usize) -> [u64; 32] {
    unimplemented!();
}

/// == on X86 SIMD
fn simd_eq_x86(a: [u64; 32], b: [u64; 32], v: usize) -> bool {
    unimplemented!();
}

/// Fallback & on X86 SIMD
fn simd_and_fallback(mut a: [u64; 32], b: [u64; 32], _v: usize) -> [u64; 32] {
    for i in 0..32 {
        a[i] &= b[i];
    }

    a
}

/// Fallback == on X86 SIMD
fn simd_eq_fallback(a: [u64; 32], b: [u64; 32], v: usize) -> bool {
    let integers = v / 64;
    let bitsleft = v % 64;

    for i in 0..32 {
        // Will be zero when equal.
        let c = a[i] ^ b[i];

        //        println!("A; {:b}\n B; {:b}\n C; {:b}", a[i], b[i], c);

        if i == integers {
            let one = 0b11111111_11111111_11111111_11111111_11111111_11111111_11111111_11111111;
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

fn main() {
        let mut a = [0xFFFFFFFF_FFFFFFFFu64; 32];
        let mut b = [0u64; 32];

        a[0] = 0b11100011_11111111_11111111_10000000_11111111_11111111_10001101_11111111u64;
        a[1] = 0b11110000_11111111_11111111_11111111_11111111_11111111_11111111_11110000u64;
        b[0] = 0b11100011_11111111_11111111_10000000_11111111_11111111_10001101_11111111u64;
        b[1] = 0b00001111_11111111_11111111_11111111_11111111_11111111_11111111_11110000u64;

        assert_eq!(simd_eq_fallback(a, b, 84), true);

        a[0] = 0b11100011_11111111_11111111_10000000_11111111_11111111_10001101_11111110u64;

        assert_eq!(simd_eq_fallback(a, b, 84), false);
        let mut a = [0u64; 32];
        let mut b = [0u64; 32];

        a[0] = 0b111;
        b[0] = 0b101;

        assert_eq!(simd_eq_fallback(a, b, 3), false);
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
