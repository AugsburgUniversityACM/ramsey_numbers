pub const MAX_KGRAPHRBE_SIZE: usize = 64 * 32;

/// A complete graph colored with red and blue edges.
pub struct KGraphRBE {
    // Number of vertices in the graph.
    size: usize,
    // Bitstring of edge colors.
    colors: [u64; 32],
}

impl KGraphRBE {
    /// Create a new Red/Blue complete graph.
    #[inline(always)]
    pub fn new(size: usize) -> Self {
        KGraphRBE {
            size,
            colors: [0; 32],
        }
    }

    /// Set the color for an edge to blue (0).
    #[inline(always)]
    pub fn setb(&mut self, index: usize) {
        let i = index / 64;
        let j = index % 64;

        print!("BFrom {:b}", self.colors[i]);
        self.colors[i] &= !(1 << j);
        println!(" to {:b}", self.colors[i]);
    }

    /// Set the color for an edge to red (1).
    #[inline(always)]
    pub fn setr(&mut self, index: usize) {
        let i = index / 64;
        let j = index % 64;

        print!("RFrom {:b}", self.colors[i]);
        self.colors[i] |= 1 << j;
        println!(" to {:b}", self.colors[i]);
    }

    /// Get the color for an edge.  1 for red, 0 for blue.
    #[inline(always)]
    pub fn get(&mut self, index: usize) -> bool {
        let i = index / 64;
        let j = index % 64;

        println!("Get {:b}", self.colors[i]);
        (self.colors[i] & (1 << j)) != 0
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn graph_consistency() {
        let mut kgraphrbe = KGraphRBE::new(MAX_KGRAPHRBE_SIZE);
        for i in 0..MAX_KGRAPHRBE_SIZE {
            dbg!(i);

            assert_eq!(kgraphrbe.get(i), false);
            kgraphrbe.setr(i);
            assert_eq!(kgraphrbe.get(i), true);
            kgraphrbe.setb(i);
            assert_eq!(kgraphrbe.get(i), false);
        }
    }
}
