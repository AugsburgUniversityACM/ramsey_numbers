use crate::GraphE;
use crate::graphe::MAX_GRAPHE_SIZE;

/// Find the 2 biggest cliques in a GraphE.
fn cliques(n_vertices: usize, kgraphrbe: GraphE) -> (usize, usize) {
    // Look for first edge's (AB) color (treat this as RED).
    let edge = kgraphrbe.get(0);
    let mut r = 1;
    let mut b = 0;

    // Start at 2 (Vertex C)
    for i in 2..n_vertices {
        let color = kgraphrbe.get(i);

        if color == edge {
        }
    }

    // Return smaller clique first, then the bigger clique.
    if r > b {
        (b, r) // small, big
    } else {
        (r, b) // small, big
    }
}

/// Generate differently colored graphs to find cliques in.
pub fn calculate(n_vertices: usize, n_edges: usize) -> (usize, usize) {
    println!("Vertices: {}, Edges: {}", n_vertices, n_edges);

    let mut kgraphrbe = GraphE::new(n_edges);
    let mut minb = std::usize::MAX; // Big Clique
    let mut minr = std::usize::MAX; // Small Clique

    loop {
        if kgraphrbe.increment() {
            break;
        }
        let (r, b) = cliques(n_vertices, kgraphrbe.clone());
        minr = minr.min(r);
        minb = minb.min(b);
    }

    (minr, minb)
}

/// Calculate the ramsey numbers R(x, x) in a brute-force loop.
pub fn brute_force() {
    // Search through different sizes of graphs and detect cliques.
    let mut n_vertices = 2;

    loop {
        let n_edges = (n_vertices * (n_vertices - 1)) >> 1;

        if n_edges > MAX_GRAPHE_SIZE {
            break;
        }

        println!("R{:?} =? {}", calculate(n_vertices, n_edges), n_vertices);

        n_vertices += 1;
    }
}
