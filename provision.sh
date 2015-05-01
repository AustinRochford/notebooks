#!/bin/bash

apt-get update
apt-get install -y git 

# Install IPython
apt-get install -y python-pip python2.7-dev libzmq-dev
pip install "ipython[notebook]"
pip install git+https://github.com/monetate/s3nb

# Install NumPy and SciPy
apt-get install -y gfortran libblas-dev liblapack-dev
pip install numpy scipy

# Install matplotlib, Seaborn, and bokeh
apt-get install -y libpng12-dev libfreetype6-dev
pip install matplotlib seaborn bokeh

# Install pandas, patsy, statsmodels, scikit-learn and pymc3
ln -s /usr/include/freetype2/ft2build.h /usr/include/
pip install pandas patsy statsmodels scikit-learn
pip install --process-dependency-links git+https://github.com/pymc-devs/pymc3

# Install IBash kernel
pip install git+https://github.com/takluyver/bash_kernel

# Install octave kernel
apt-get install -y octave
pip install metakernel octave_kernel

# Install giphy-ipython-magic
pip install giphy-ipython-magic
