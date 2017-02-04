FROM jupyter/scipy-notebook

MAINTAINER Austin Rochford <austin.rochford@gmail.com>

USER $NB_USER 

RUN pip3 install git+https://github.com/pymc-devs/pymc3
RUN pip3 install https://storage.googleapis.com/tensorflow/linux/cpu/tensorflow-1.0.0rc1-cp35-cp35m-linux_x86_64.whl
RUN pip3 install edward
RUN pip3 install lda

RUN conda install --quiet --yes \
    boto \
    # to fix a bug in QT support; hopefully this is not necessary long-term
    icu=56.1 \
    toolz \
    xlrd

RUN conda config --add channels bioconda
RUN conda install --quiet --yes awscli
