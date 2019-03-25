use crate::*;

/// The maximum number of edges.
pub const MAX_GRAPHE_SIZE: usize = 64 * 32;

/// A complete graph colored with red and blue edges.
#[derive(Clone)]
pub struct GraphE {
    // Number of edges in the graph.
    edges: usize,
    // Bitstring of relations between vertices.
    colors: [u64; 32],
}

impl GraphE {
    /// Create a new Red/Blue complete graph.
    #[inline(always)]
    pub fn new(edges: usize) -> Self {
        GraphE {
            edges,
            colors: [0; 32],
        }
    }

    /// Set the color for an edge to blue (0).
    #[inline(always)]
    pub fn set_zero(&mut self, index: usize) {
        debug_assert!(index < self.edges);

        let i = index / 64;
        let j = index % 64;

//        print!("BFrom {:b}", self.colors[i]);
        self.colors[i] &= !(1 << j);
//        println!(" to {:b}", self.colors[i]);
    }

    /// Set the color for an edge to red (1).
    #[inline(always)]
    pub fn set_one(&mut self, index: usize) {
        debug_assert!(index < self.edges);

        let i = index / 64;
        let j = index % 64;

//        print!("RFrom {:b}", self.colors[i]);
        self.colors[i] |= 1 << j;
//        println!(" to {:b}", self.colors[i]);
    }

    /// Get the color for an edge.  1 for red, 0 for blue.
    #[inline(always)]
    pub fn get(&self, index: usize) -> bool {
        debug_assert!(index < self.edges);

        let i = index / 64;
        let j = index % 64;

//        println!("Get {:b}", self.colors[i]);
        (self.colors[i] & (1 << j)) != 0
    }

    /// Get the number of edges.
    #[inline(always)]
    pub fn n_edges(&self) -> usize {
        self.edges
    }

    /// Get the number of vertices.
    #[inline(always)]
    pub fn n_vertices(&self) -> usize {
        assert!(is_triangular(self.edges));
        tlrt(self.edges)
    }

    #[inline(always)]
    pub fn increment(&mut self) -> bool {
        let mut digit = 0;

        loop {
            if self.get(digit) {
                self.set_zero(digit);
                digit += 1;
            } else {
                self.set_one(digit);
                break;
            }
        }

        // TODO: should be >= ?
        digit > (self.edges >> 1)
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn graph_consistency() {
        let mut kgraphrbe = GraphE::new(MAX_GRAPHE_SIZE);
        for i in 0..MAX_GRAPHE_SIZE {
            dbg!(i);

            assert_eq!(kgraphrbe.get(i), false);
            kgraphrbe.setr(i);
            assert_eq!(kgraphrbe.get(i), true);
            kgraphrbe.setb(i);
            assert_eq!(kgraphrbe.get(i), false);
        }
    }
}
