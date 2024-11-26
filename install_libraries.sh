#/bash

mamba activate floorplan
mamba install -y --file requirements.txt
mamba install ./opencv-3.1.0-np112py27_1.tar.bz2
mamba install ./tensorflow-1.10.0-py27_0.tar.bz2
