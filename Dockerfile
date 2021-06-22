FROM jupyter/datascience-notebook

MAINTAINER Austin Rochford <austin.rochford@gmail.com>

USER $NB_USER 

RUN pip install git+https://github.com/arviz-devs/arviz
RUN pip install git+https://github.com/pymc-devs/pymc3

RUN conda install --quiet --yes \
    basemap \
    boto \
    lxml \
    pyqt \
    toolz \
    us \
    xlrd

RUN conda install -c conda-forge watermark

# Import matplotlib the first time to build the font cache.
RUN python -c "import matplotlib.pyplot"
