FROM --platform=linux/x86_64 ubuntu:bionic-20190204
# FROM --platform=linux/x86_64 tensorflow/tensorflow:1.10.1-gpu

RUN apt update 
RUN apt install -y build-essential libatomic1 wget curl vim git gcc kmod libhdf5-dev hdf5-tools libtiff5-dev 
RUN apt install -y software-properties-common
RUN add-apt-repository 'deb http://security.ubuntu.com/ubuntu xenial-security main'
RUN apt update && apt install -y libjasper-dev

RUN curl -L -O "https://github.com/conda-forge/miniforge/releases/latest/download/Miniforge3-$(uname)-$(uname -m).sh"
RUN bash Miniforge3-$(uname)-$(uname -m).sh -b

ENV PATH=$PATH:/root/miniforge3/bin/
RUN mamba init && mamba create -n floorplan python=2.7

WORKDIR /workspace
COPY ../ /workspace