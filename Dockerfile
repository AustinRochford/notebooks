FROM jupyter/datascience-notebook:latest

MAINTAINER Austin Rochford <austin.rochford@gmail.com>

USER root

# for dynamic linking to the development version of theano
RUN apt-get update && \
    apt-get install -y --no-install-recommends libatlas-base-dev && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

USER $NB_USER 

COPY config/.theanorc "$HOME"/.theanorc 
RUN pip install git+https://github.com/pymc-devs/pymc3

RUN pip install pystan

RUN pip install dash dash-renderer dash-html-components dash-core-components
RUN pip install plotly

RUN conda install --quiet --yes basemap 
RUN conda install --quiet --yes \
    boto \
    toolz \
    xlrd

# Import matplotlib the first time to build the font cache.
RUN python -c "import matplotlib.pyplot"
