use crate::*;

/// A monochromatic clique.
pub struct Clique {
    color: bool,
    vertices: Vec<usize>,
}

impl Clique {
    pub fn new(color: bool, first: usize, second: usize) -> Clique {
        let vertices = vec![first, second];

        Clique { color, vertices }
    }
}

/// A representation of all of the monochromatic cliques in a graph.
struct RamseyCliques {
    cliques: Vec<Clique>,
}

impl RamseyCliques {
    /// Create a new instance of a RamseyCliques collection.
    pub fn new(orig_clique: Clique) -> RamseyCliques {
        RamseyCliques {
            cliques: vec![orig_clique],
        }
    }

    /// Add a new vertex and find which clique it belongs to.
    pub fn push(&mut self, graphe: &GraphE, new_vertex: usize) {
        // Cycle through the cliques.
        'cliques: for clique in &self.cliques {
            // Cycle through the vertices in the clique.  All vertices must be connected with the
            // same color to the new vertex.
            'vertices_in_clique: for vertex in &clique.vertices {
                if graphe.relation(new_vertex, *vertex) != clique.color {
                    continue 'cliques;
                }
            }

            break 'cliques;
        }
    }

    /// Find the number of vertices of the two largest monochromatic cliques in the `RamseyCliques`
    /// struct.
    pub fn ramsey_max_cliques(&mut self) -> (usize, usize) {
        let mut max_one = 0;
        let mut max_zero = 0;

        for clique in &self.cliques {
            let color = clique.color;
            let n_vertices = clique.vertices.len();

            if color {
                max_one = max_one.max(n_vertices);
            } else {
                max_zero = max_zero.max(n_vertices);
            }
        }

        (max_zero, max_one)
    }
}

/// Find the 2 largest monochromatic cliques in a GraphE that are different colors.
pub fn ramsey_cliques_graphe(graphe: &GraphE) -> (usize, usize) {
    let n = graphe.n_vertices();

    // Loop through all of the vertices, starting with first edge already added to the clique.
    let orig_color = graphe.relation(0, 1);
    let mut rc = RamseyCliques::new(Clique::new(orig_color, 0, 1));

    // Cycle through each vertex in the graph adding it to it's respective clique.
    for i in 1..n {
        rc.push(graphe, i);
    }

    rc.ramsey_max_cliques()
}
