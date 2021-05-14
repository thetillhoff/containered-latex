# containered latex compiler
A latex compiler in a docker container, so the actual host stays clear of all the (temporary) necessary packages. As docker is cross-platform, so it this latex compiler.

> It _always_ compiles the pdf, no matter if everything is alreay up-to-date.

## usage

There are two variables that can be adjusted:
- `textype`: Can either be `pdf` (->pdflatex, default) or `xelatex`
- `filename`: Must match the main `.tex`-filename. Default is `main.tex`

So to compile a `main.tex` with pdflatex it is sufficient to run `docker run --rm -it -v ${PWD}:/tex thetillhoff/latex`.

For additional arguments like f.e.
- using xelatex run `docker run --rm -it -v ${PWD}:/tex -e textype=xelatex thetillhoff/latex`.
- using another filename run `docker run --rm -it -v ${PWD}:/tex -e filename=main.tex thetillhoff/latex`.
