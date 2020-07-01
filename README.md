# containered latex compiler

## usage

For plain latex compilation run `docker run -it -v ${PWD}:/tex tillhoff/latex`.

For additional arguments like f.e. using xelatex run `docker run -it -v ${PWD}/tex:/tex xelatex-thesis -xelatex`.
