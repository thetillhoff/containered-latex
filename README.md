# containered latex compiler
A latex compiler in a docker container, so the actual host stays clear of all the (temporary) necessary packages. As docker is cross-platform, so it this latex compiler.

## usage

For plain latex compilation run `docker run --rm -it -v ${PWD}:/tex tillhoff/latex`.

For additional arguments like f.e. using xelatex run `docker run --rm -it -v ${PWD}:/tex -e textype=xelatex xelatex-thesis`.

> Another example is `docker run --rm -it -v ${PWD}:/tex -e filename=main.tex tillhoff/latex pdflatex`
