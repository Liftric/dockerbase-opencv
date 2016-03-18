# dockerbase-opencv

Dockerfile for building an image for opencv.


### Usage
```bash
curl -fsSLO https://raw.githubusercontent.com/benjohnde/dockerbase-opencv/master/Dockerfile
docker build -t dockerbase-opencv .
docker run -it dockerbase-opencv bash
```


### Prerequisites on OS X

If you have [Homebrew](https://github.com/Homebrew/homebrew) and [VirtualBox](https://www.virtualbox.org) installed you can just:

```bash
brew install docker
brew install docker-machine
docker-machine create --driver virtualbox opencv
eval $(docker-machine env opencv)
```
