# Ramsey Numbers
Calculations of Ramsey Numbers using parallel computing and SIMD.

## Running The Rust Code
In the bash, enter the Rust directory:

```bash
cd rs_calcg
```

### Run With SIMD Optimizations
```bash
cargo run --release --example ramsey
```

### Run Without SIMD Optimizations
To run without SIMD, call this:

```bash
cargo run --release --example ramsey --no-default-features
```

### Run The Unit Tests
To run the unit tests use:

```bash
cargo test
```

## Benchmarking
To benchmark the rust code.

### NOSIMD
This will run the benchmark without SIMD.

```bash
cargo bench --no-default-features
```

### SIMD
This will run the benchmark with SIMD.

```bash
cargo bench
```

## Setting Up Your Python Virtual Environment
To setup your python virtual environment run the following command
```
make build_pyDist
```
This command will run the makefile from pyDist which will setup
a virtual environment in a new dirctory called pyDist. You can 
activate the virtual environment using 
```
source pyDist/distEnv/bin/activate
```
and you can deactivate it using
```
deactivate
```
This virtual environment is not added to your commits.

## Graph Format
The graph format stores a list of colors, exported from rs\_calcg and imported in py\_renderg.
The file is a bunch of characters in a row.  For a K4 complete graph with vertices 0, 1, 2 and 3.
1 for RED and 0 for BLUE.  The order is specified below.
```
1~0 // Add 2nd Vertex (1 edge)
2~0 // Add 3rd Vertex (2 edges)
2~1
3~0 // Add 4th Vertex (3 edges)
3~1
3~2
```

Example file for K4:
```
110010
```
