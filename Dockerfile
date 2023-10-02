FROM debian:12

RUN apt-get update && apt-get install -y python-pip latexmk

RUN apt-get install -y texlive-xetex texlive texlive-latex-extra texlive-generic-extra texlive-lang-german texlive-bibtex-extra biber
# Following line is not used, as it downloads EVERY language and therefore requires several hundred megabytes
#RUN apt-get install texlive-full

RUN pip install pygments

RUN mkdir /temp

ENV textype=pdf
ENV filename=main.tex

WORKDIR /temp

# ? eventually latexmk command has to executed twice for completing properly
CMD ["/bin/bash","-c","cp -dr /tex/* /temp/ && latexmk -shell-escape -$textype $filename && cp /temp/main.pdf /tex/ || cp /temp/main.log /tex/"]
# The following line would output only the last part of the compiling output. This may be better for beginners but hides progress and hides earlier warnings.
#CMD ["/bin/bash","-c","cp -dr /tex/* /temp/ && rm /temp/*.pdf && latexmk -shell-escape -$textype $filename | tail | sed '/^============$/ q' && cp /temp/main.pdf /tex/ || cp /temp/main.log /tex/"]
