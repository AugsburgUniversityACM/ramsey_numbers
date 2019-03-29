#!/bin/bash

# this make file is used to setup
# the users ptyhon virtual environment
# and download the latest version of 
# pyDist for multiprocessing...
#

build_pyDist:
	@echo "\033[92m-* Downloading pyDist\033[0m"
	git clone https://github.com/alekLukanen/pyDist.git
	@echo "\033[92m-* Running makefile for pyDist\033[0m"
	make --directory ./pyDist build_env
	@echo "\033[92m-* Done. Please activate your new python venv.\033[0m"

update_pyDist:
	@echo "\033[92m-* updating pyDist\033[0m"
	make --directory ./pyDist update_pyDist

remove_pyDist:
	@rm -r pyDist

