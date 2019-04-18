#!/bin/bash
apt-get update
apt-get install build-essential make cmake cmake-curses-gui g++ libavformat-dev libavutil-dev libswscale-dev libv4l-dev libeigen3-dev libglew-dev libgtk2.0-dev
apt-get install libdc1394-22-dev libxine2-dev libgstreamer1.0-dev libgstreamer-plugins-base1.0-dev
apt-get install libjpeg8-dev libjpeg-turbo8-dev libtiff5-dev libjasper-dev libpng12-dev libavcodec-dev
apt-get install libxvidcore-dev libx264-dev libgtk-3-dev libatlas-base-dev gfortran
apt-get install libopenblas-dev liblapack-dev liblapacke-dev
apt-get install python3-dev python3-pip python3-tk
pip3 install numpy
pip3 install matplotlib
apt-get install python-dev python-pip python-tk
pip2 install numpy
pip2 install matplotlib

mkdir -p ~/temp && cd ~/temp
wget https://github.com/opencv/opencv/archive/3.4.0.zip
unzip opencv-3.4.0.zip
cd ~/temp/3.4.0
mkdir build
cd build
cmake -D CMAKE_BUILD_TYPE=RELEASE -D CMAKE_INSTALL_PREFIX=/usr/local -D WITH_CUDA=ON -D CUDA_ARCH_BIN="6.2" -D CUDA_ARCH_PTX="" -D WITH_CUBLAS=ON -D ENABLE_FAST_MATH=ON -D CUDA_FAST_MATH=ON -D ENABLE_NEON=ON -D WITH_LIBV4L=ON -D BUILD_TESTS=OFF -D BUILD_PERF_TESTS=OFF -D BUILD_EXAMPLES=OFF -D WITH_QT=ON -D WITH_OPENGL=ON ../
make -j4
sudo make install
