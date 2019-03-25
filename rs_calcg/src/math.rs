//! Triangular Numbers.

/// Get the trianglular root of a number.
pub fn tlrt(x: usize) -> usize {
    (((8 * x + 1) as f64).sqrt() as usize - 1) / 2
}

/// Check if a number is triangular.
pub fn is_triangular(x: usize) -> bool {
    let y = tlrt(x);
    let z = (y * (y + 1)) / 2;

    y == z
}
