use crate::*;

/// Calculate a singular Ramsey Number: `R(r, s)`.
pub fn ramsey(r: usize, s: usize) -> usize {
    let mut nvertices = r.min(s);
    let mut graph;
    let mut rcliques;
    let mut scliques;
    let mut run;

    'sizes: loop {
        let edges = (nvertices * (nvertices - 1)) >> 1;
        run = 0;
        dbg!((nvertices, edges));
//        dbg!(edges);

        // Build a Graph and The possible rcliques and scliques.
        graph = GraphE::new(edges);
        rcliques = graph.find_possible_cliques(r);
        scliques = graph.find_possible_cliques(s);
        assert_eq!(nvertices, graph.n_vertices() + 1);

        'colorings: loop {
//            dbg!((nvertices, run));

            if graph.find_cliques(&rcliques, &scliques) == (false, false) {
                // We have found a variant of the graph that does not have either r or b clique cs.
                // So now we have to increase v;
                nvertices += 1;

                continue 'sizes;
            }
            if graph.increment() {
                // At this point we have failed to find a graph that doesn't satisfy the properties.
                // We have found the Ramsey number.
                return nvertices;
            }

            run += 1;
        }
    }
}
/*
/// Calculate a singular Ramsey Number: `R(rs, rs)`.
pub fn ramsey2(rs: usize) -> usize {
    let mut nvertices = rs;
    let mut graph;
    let mut rscliques;

    'sizes: loop {
        let edges = (nvertices * (nvertices - 1)) >> 1;
        dbg!(nvertices);
        dbg!(edges);

        // Build a Graph and The possible rcliques and scliques.
        graph = GraphE::new(edges);
        rscliques = graph.find_possible_cliques(rs);

        'colorings: loop {
            dbg!(nvertices);

            if graph.find_cliques(&rscliques, &rscliques) == (false, false) {
                // On this variant of the graph we have either a red or a blue clique correct size.
            } else {
                // We have found a variant of the graph that does not have either r or b clique cs.
                // So now we have to increase v;
                nvertices += 1;

                continue 'sizes;
            }
            if graph.increment() {
                // At this point we have failed to find a graph that doesn't satisfy the properties.
                // We have found the Ramsey number.
                return nvertices;
            }
        }
    }
}*/
