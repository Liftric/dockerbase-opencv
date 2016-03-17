git clone https://github.com/Itseez/opencv.git
git clone https://github.com/Itseez/opencv_contrib.git

cd /opencv
git checkout 3.1.0
cd /opencv_contrib
git checkout 3.1.0

mkdir /opencv/build
cd /opencv/build
cmake -D CMAKE_BUILD_TYPE=RELEASE -D CMAKE_INSTALL_PREFIX=/usr/local \
  -D INSTALL_C_EXAMPLES=OFF -D INSTALL_PYTHON_EXAMPLES=OFF \
  -D OPENCV_EXTRA_MODULES_PATH=/opencv_contrib/modules \
  -D BUILD_opencv_java=OFF  -D BUILD_opencv_python=OFF \
  -D BUILD_EXAMPLES=OFF ..
make
make install
ldconfig
