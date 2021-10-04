# dockerbase-opencv

Dockerfile for building an image for opencv.

WARNING: This image contains OpenCV 4.1.2 with a lot of disabled modules which fits our use case. Feel free to adjust!

### Usage
```bash
docker build -t dockerbase-opencv .
docker run -it dockerbase-opencv bash
```
