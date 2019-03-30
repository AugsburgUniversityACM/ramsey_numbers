mod graphe;
mod brute_force;
mod cliques;
mod math;
mod random_tests;
mod simd;
mod ramsey;

pub use graphe::GraphE;
pub use brute_force::brute_force;
pub use cliques::ramsey_cliques_graphe;
pub use math::{is_triangular, triangle_num, triangle_root};
pub use simd::{simd_and, simd_eq, simd_is_zero, print_enabled};

const R: usize = 3;
const S: usize = 3;

fn main() {
    // Print whether or not we have SIMD
    print_enabled();
    // 
    println!("R({},{})={}", R, S, ramsey::ramsey(R, S));
}
