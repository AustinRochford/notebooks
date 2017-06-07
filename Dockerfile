FROM jupyter/datascience-notebook

MAINTAINER Austin Rochford <austin.rochford@gmail.com>

USER root

# for dynamic linking to the development version of theano
RUN apt-get update && \
    apt-get install -y --no-install-recommends libatlas-base-dev && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

USER $NB_USER 

RUN pip3 install git+https://github.com/Theano/Theano.git
COPY config/.theanorc "$HOME"/.theanorc

RUN pip3 install git+https://github.com/pymc-devs/pymc3

RUN pip3 install scikit-optimize

RUN conda install --quiet --yes \
    boto \
    pyqt \
    toolz \
    xlrd

# Import matplotlib the first time to build the font cache.
RUN python -c "import matplotlib.pyplot"
