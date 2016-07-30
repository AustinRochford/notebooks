FROM jupyter/scipy-notebook

MAINTAINER Austin Rochford <austin.rochford@gmail.com>

USER $NB_USER 

RUN pip install git+https://github.com/pymc-devs/pymc3
RUN conda install --quiet --yes tensorflow
RUN pip install edward

RUN conda install --quiet --yes \
    boto \
    # to fix a bug in QT support; hopefully this is not necessary long-term
    icu=56.1 \
    toolz

RUN conda config --add channels bioconda
RUN conda install --quiet --yes awscli
