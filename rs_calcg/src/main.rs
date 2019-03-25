mod graphe;
mod brute_force;
mod cliques;
mod math;

pub use graphe::GraphE;
pub use brute_force::brute_force;
pub use cliques::cliques_graphe;
pub use math::{is_triangular, tlrt};

fn main() {
    brute_force();
}
