#/bin/bash
docker build -t videodataset .

xhost +
docker run -it \
   --rm \
   -v $(pwd):/video-preprocessing \
   videodataset /bin/bash
  