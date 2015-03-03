#!/bin/bash

apt-get update

# Install IPython
apt-get install -y python-pip python2.7-dev libzmq-dev
pip install "ipython[notebook]"

# Install NumPy and SciPy
apt-get install -y gfortran libblas-dev liblapack-dev
pip install numpy scipy

# Install matplotlib and Seaborn
apt-get install -y libpng12-dev libfreetype6-dev
pip install matplotlib seaborn

# Install pandas, patsy, statsmodels, and pymc3
apt-get install -y git 
ln -s /usr/include/freetype2/ft2build.h /usr/include/
pip install pandas patsy statsmodels
pip install --process-dependency-links git+https://github.com/pymc-devs/pymc3
