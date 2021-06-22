FROM jupyter/datascience-notebook

MAINTAINER Austin Rochford <austin.rochford@gmail.com>

USER $NB_USER 

RUN pip install git+https://github.com/arviz-devs/arviz
RUN pip install git+https://github.com/pymc-devs/pymc3

RUN pip install \
    boto \
    lxml \
    mkl-service \
    toolz \
    us \
    watermark \
    xlrd

# Import matplotlib the first time to build the font cache.
RUN python -c "import matplotlib.pyplot"
