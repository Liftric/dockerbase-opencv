#!/bin/bash

git clone https://github.com/opencv/opencv.git
git clone https://github.com/opencv/opencv_contrib.git

cd /opencv
git checkout 4.1.2
cd /opencv_contrib
git checkout 4.1.2

mkdir /opencv/build
cd /opencv/build
cmake \
  -D CMAKE_BUILD_TYPE=RELEASE \
  -D CMAKE_INSTALL_PREFIX=/usr/local \
  -D INSTALL_C_EXAMPLES=OFF \
  -D INSTALL_PYTHON_EXAMPLES=OFF \
  -D CMAKE_BUILD_WITH_INSTALL_RPATH=ON \
  -D OPENCV_EXTRA_MODULES_PATH=/opencv_contrib/modules \
  -D WITH_CUDA=OFF \
  -D WITH_MATLAB=OFF \
  -D BUILD_SHARED_LIBS=ON \
  -D BUILD_ANDROID_EXAMPLES=OFF \
  -D BUILD_DOCS=OFF \
  -D BUILD_ZLIB=ON \
  -D BUILD_PNG=ON \
  -D BUILD_JPEG=ON \
  -D BUILD_FAT_JAVA_LIB=OFF \
  -D BUILD_PERF_TESTS=OFF \
  -D BUILD_TESTS=OFF \
  -D BUILD_opencv_bgsegm=OFF \
  -D BUILD_opencv_bioinspired=OFF \
  -D BUILD_opencv_legacy=OFF \
  -D BUILD_opencv_java=OFF \
  -D BUILD_opencv_objdetect=OFF \
  -D BUILD_opencv_optflow=OFF \
  -D BUILD_opencv_phase_unwrapping=OFF \
  -D BUILD_opencv_python2=OFF \
  -D BUILD_opencv_python3=ON \
  -D BUILD_opencv_dnn=OFF \
  -D BUILD_opencv_freetype=OFF \
  -D BUILD_opencv_hdf=OFF \
  -D BUILD_opencv_gapi=OFF \
  -D BUILD_opencv_ml=OFF \
  -D BUILD_opencv_plot=OFF \
  -D BUILD_opencv_reg=OFF \
  -D BUILD_opencv_rgbd=OFF \
  -D BUILD_opencv_saliency=OFF \
  -D BUILD_opencv_shape=OFF \
  -D BUILD_opencv_stereo=OFF \
  -D BUILD_opencv_videoio=OFF \
  -D BUILD_opencv_videostab=OFF \
  -D BUILD_opencv_video=OFF \
  -D BUILD_opencv_img_hash=OFF \
  -D BUILD_opencv_hfs=OFF \
  -D BUILD_opencv_fuzzy=OFF \
  -D BUILD_opencv_surface_matching=OFF \
  -D BUILD_opencv_stitching=OFF \
  -D BUILD_opencv_cudaarithm=OFF \
  -D BUILD_opencv_cudabgsegm=OFF \
  -D BUILD_opencv_cudacodec=OFF \
  -D BUILD_opencv_cudafeatures2d=OFF \
  -D BUILD_opencv_cudafilters=OFF \
  -D BUILD_opencv_cudaimgproc=OFF \
  -D BUILD_opencv_cudalegacy=OFF \
  -D BUILD_opencv_cudaobjdetect=OFF \
  -D BUILD_opencv_cudaoptflow=OFF \
  -D BUILD_opencv_cudastereo=OFF \
  -D BUILD_opencv_cudawarping=OFF \
  -D BUILD_opencv_cudev=OFF \
  -D BUILD_opencv_java_bindings_generator=OFF \
  -D BUILD_opencv_python_bindings_generator=OFF \
  -D BUILD_opencv_viz=OFF \
  -D BUILD_EXAMPLES=OFF ..

make -j`nproc`
make install
ldconfig

rm -rf /opencv
rm -rf /opencv_contrib
