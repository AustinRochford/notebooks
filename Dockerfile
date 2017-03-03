FROM jupyter/scipy-notebook

MAINTAINER Austin Rochford <austin.rochford@gmail.com>

USER $NB_USER 

RUN pip3 install git+https://github.com/Theano/Theano.git
RUN pip3 install git+https://github.com/pymc-devs/pymc3

RUN conda install --quiet --yes \
    boto \
    # to fix a bug in QT support; hopefully this is not necessary long-term
    icu=56.1 \
    toolz \
    xlrd

# Import matplotlib the first time to build the font cache.
RUN python -c "import matplotlib.pyplot"
