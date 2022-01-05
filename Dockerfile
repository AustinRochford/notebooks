FROM gcr.io/deeplearning-platform-release/sklearn-cpu

MAINTAINER Austin Rochford <austin.rochford@gmail.com>

RUN pip install \
    boto \
    bs4 \
    lxml \
    sympy \
    toolz \
    us \
    watermark \
    xlrd

RUN pip install git+https://github.com/arviz-devs/arviz
RUN pip install git+https://github.com/pymc-devs/pymc
