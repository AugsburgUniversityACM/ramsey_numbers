use crate::*;

/// The maximum number of edges.
pub const MAX_GRAPHE_SIZE: usize = 64 * 32;

/// A bitstring that represents a graph.  No length.
pub struct BitString([u64; 32]);

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
//        dbg!(edges);
        GraphE {
            edges,
            colors: [0; 32],
        }
    }

    /// Create a new Clique from a list of vertices.
    #[inline(always)]
    pub fn from(vertices: &[bool]) -> Self {
        let mut graph = GraphE {
            edges: triangle_num(vertices.len()) /*vertices.len()*/,
            colors: [0; 32],
        };

        // Build all of the edges.
        for vertex_a in 0..vertices.len() {
            if vertices[vertex_a] == false { continue }

            for vertex_b in 0..vertices.len() {
                if vertices[vertex_b] == false || vertex_a == vertex_b { continue }

                if vertices[vertex_a] && vertices[vertex_b] {
                    graph.add(vertex_a, vertex_b);
                }
            }
        }

        graph
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
        triangle_root(self.edges)
    }

    /// Get the relation between two vertices.
    #[inline(always)]
    pub fn relation(&self, first: usize, second: usize) -> bool {
        let index = (triangle_num(second) + first).min(triangle_num(first) + second);

        self.get(index)
    }

    /// Add an edge between two vertices.
    pub fn add(&mut self, first: usize, second: usize) {
        let index = (triangle_num(second) + first).min(triangle_num(first) + second);

        self.set_one(index);
    }

    /// Find the next variation of the graph.
    #[inline(always)]
    pub fn increment(&mut self) -> bool {
        let mut digit = 0;

        // Go through all of the edges.
        loop {
            if self.get(digit) {
                self.set_zero(digit);
                digit += 1;
                // Can no longer get or set, so we've hit the last iteration.
                if digit == self.n_edges() {
                    break true;
                }
            } else {
                self.set_one(digit);
                break false;
            }
        }
    }

    /// Get all of the possible cliques with `n` vertices on a complete graph of this size.
    #[inline(always)]
    pub fn find_possible_cliques(&self, n: usize) -> Vec<BitString> {
        // There are not enough vertices in the graph to have a clique of this size.
        if n > self.n_vertices() {
            return vec![];
        }

        fn next(which_vertices: &mut [bool]) -> bool {
            // Start at the end of the list of vertices.
            let mut index = which_vertices.len();

            let mut found_zero = false;

            loop {
                index -= 1;
                if which_vertices[index] == false {
                    found_zero = true;
                }
                if found_zero && which_vertices[index] {
                    // Swap 1
                    which_vertices.swap(index, index + 1);
                    break false;
                }
                if index == 0 { // We have found the last variant.
                    break true;
                }
            }
        }

        let mut returnv = vec![];
        let mut current = vec![false; self.n_vertices()];

        for i in 0..n {
            add(current.as_mut_slice());
        }

        // at this point current looks something like 111000

        println!("Enter Loop.");
        loop {
            dbg!(&current);

            let graph = Self::from(&current);

            returnv.push(BitString(graph.colors));

            if next(&mut current) {
                break;
            }
        }
        println!("Exit Loop.");

        returnv
    }

    /// Check for cliques of size r and b.  When using the function, start n at the size of the
    /// graph and decrease it.  `bitstrings` must be a result from `find_possible_cliques()` with
    /// the same value for `n`.
    #[inline(always)]
    pub fn find_cliques(&self, prcs: &Vec<BitString>, pbcs: &Vec<BitString>) -> (bool, bool) {
        let gc = self.colors;

        let mut has_red = false;
        let mut has_blue = false;

        // Check for RED Cliques of size r.
        for pc in prcs {
//            dbg!((pc.0, gc));
            let c = simd_and(pc.0, gc, self.edges);
            if simd_eq(c, pc.0, self.edges) {
                // We have a RED Clique of 3 Vertices.
                has_red = true;
                break;
            }
        }

        for pc in pbcs {
            let c = simd_and(pc.0, gc, self.edges);
            if simd_is_zero(c, self.edges) {
                // We have a BLUE Clique of 3 Vertices.
                has_blue = true;
                break;
            }
        }

//        dbg!((has_red, has_blue));

        (has_red, has_blue)
    }
}

fn add(current: &mut [bool]) {
    for i in 0..current.len() {
        if current[i] {
            continue;
        }
        current[i] = true;
        break;
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn graph_consistency() {
        let mut graphe = GraphE::new(MAX_GRAPHE_SIZE);
        for i in 0..MAX_GRAPHE_SIZE {
            dbg!(i);

            assert_eq!(graphe.get(i), false);
            graphe.set_one(i);
            assert_eq!(graphe.get(i), true);
            graphe.set_zero(i);
            assert_eq!(graphe.get(i), false);
        }
    }
}
