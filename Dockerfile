FROM ubuntu:22.04

WORKDIR /app
COPY . .



RUN apt-get update && apt-get install -y git && apt-get install -y python3-pip
RUN ln -s /usr/bin/python3 /usr/bin/python

RUN pip install certifi \
    && pip install chardet \
    && pip install cloudpickle \
    && pip install cycler \
    && pip install dask \
    && pip install decorator \
    && pip install ffmpeg-python \
    && pip install future \
    && pip install idna \
    && pip install imageio \
    && pip install imageio-ffmpeg \
    && pip install kiwisolver \
    && pip install matplotlib \
    && pip install networkx \
    && pip install numpy \
    && pip install opencv-python \
    && pip install pandas \
    && pip install Pillow \
    && pip install protobuf \
    && pip install pyparsing \
    && pip install python-dateutil \
    && pip install pytz \
    && pip install PyWavelets \
    && pip install requests \
    && pip install scikit-image \
    && pip install scikit-learn \
    && pip install scipy \
    && pip install six \
    && pip install tensorboardX \
    && pip install toolz \
    && pip install torch \
    && pip install torchvision \
    && pip install tqdm \
    && pip install urllib3 \
    && pip install yt-dlp


RUN git clone https://github.com/ssamkyu01/video-preprocessing.git 


