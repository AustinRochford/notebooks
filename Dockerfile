FROM jupyter/scipy-notebook

MAINTAINER Austin Rochford <austin.rochford@gmail.com>

USER $NB_USER 

RUN pip install git+https://github.com/pymc-devs/pymc3

RUN conda install --quiet --yes \
    boto \
    toolz

# to fix a bug in QT support; hopefully this is not necessary long-term
RUN conda install --quiet --yes icu=56.1

RUN conda config --add channels bioconda
RUN conda install --quiet --yes awscli
