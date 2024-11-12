#!/bin/bash

echo "Installing Jupyter Notebook"
pip3 install jupyter

echo "Installing Pandas"
pip3 install pandas

echo "Installing Numpy"
pip install numpy

echo "Installing venv"
python3 -m pip install --user virtualenv