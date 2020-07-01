# containered latex compiler

## usage

For plain latex compilation run `docker run --rm -it -v ${PWD}:/tex tillhoff/latex`.

For additional arguments like f.e. using xelatex run `docker run --rm -it -v ${PWD}:/tex xelatex-thesis -xelatex`.

> Another example is `docker run --rm -it -v ${PWD}:/tex tillhoff/latex pdflatex main.tex`
