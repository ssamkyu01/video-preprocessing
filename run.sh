#/bin/bash
#docker build -t videodataset .

xhost +
docker run -it \
   --name download \
   --runtime=nvidia \
   --rm \
   -v $(pwd):/video-preprocessing \
   videodataset python load_videos.py --metadata vox-metadata.csv --format .mp4 --out_folder vox --workers 8
  