//! Calculates fast for
//! * all R(1, _)
//! * no larger than R(2, 6)
//! * no larger R(3, 3)

mod brute_force;
mod cliques;
mod graphe;
mod math;
mod ramsey;
mod random_tests;
mod simd;

pub use brute_force::brute_force;
pub use cliques::ramsey_cliques_graphe;
pub use graphe::GraphE;
pub use math::{is_triangular, triangle_num, triangle_root};
pub use simd::{print_enabled, simd_and, simd_eq, simd_is_zero};
pub use ramsey::ramsey;
