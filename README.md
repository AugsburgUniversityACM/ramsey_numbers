# Ramsey Numbers
Calculations of Ramsey Numbers using parallel computing and SIMD.

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
The file is a bunch of characters in a row.  For a K4 complete graph with vertices A, B, C and D.
R for RED and B for BLUE.  The order is specified below.
```
BA // Add 2nd Vertex (1 edge)
CA // Add 3rd Vertex (2 edges)
CB
DA // Add 4th Vertex (3 edges)
DB
DC
```
Example file for K4:
```
RRBBRB
```
