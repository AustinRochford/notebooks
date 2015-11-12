#!/bin/bash

add-apt-repository ppa:marutter/rrutter
apt-get update
apt-get install -y git 

# Install IPython
apt-get install -y python-pip python2.7-dev libzmq-dev
pip install "ipython[notebook]==3.2.1"
pip install git+https://github.com/monetate/s3nb
pip install git+https://github/AustinRochford/s3img-ipython-magic

# Install NumPy and SciPy
apt-get install -y gfortran libblas-dev liblapack-dev
pip install numpy scipy

# Install matplotlib, Seaborn, and bokeh
apt-get install -y libpng12-dev libfreetype6-dev
pip install matplotlib bokeh
pip install seaborn 

# Install pandas, patsy, statsmodels, scikit-learn and pymc3
ln -s /usr/include/freetype2/ft2build.h /usr/include/
pip install pandas patsy statsmodels scikit-learn theano
pip install git+https://github.com/pymc-devs/pymc3

# Install IBash kernel
pip install git+https://github.com/takluyver/bash_kernel

# Install octave kernel
apt-get install -y octave
pip install metakernel octave_kernel

# Install giphy-ipython-magic
pip install giphy-ipython-magic

# Install sqlite
apt-get install -y sqlite

# Install R
apt-get install -y r-base r-base-dev 
pip install rpy2

# Install AWS command line tools
pip install awscli

# Install PyDOT
pip install pydot
apt-get install -y graphviz
