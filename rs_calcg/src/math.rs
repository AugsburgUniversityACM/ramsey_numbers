//! Triangular Numbers.

/// Get the nth trianglular number.
pub fn triangle_num(n: usize) -> usize {
    (n * (n + 1)) / 2
}

/// Get the trianglular root of a number.
pub fn triangle_root(x: usize) -> usize {
    (((8 * x + 1) as f64).sqrt() as usize - 1) / 2
}

/// Check if a number is triangular.
pub fn is_triangular(x: usize) -> bool {
    let y = triangle_root(x);
    let z = triangle_num(y);

    x == z
}
