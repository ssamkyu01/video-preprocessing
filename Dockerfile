FROM python:3.9

WORKDIR /app
COPY . .

RUN python3 -m pip install --upgrade pip
RUN apt-get update && apt-get install -y git && git clone https://github.com/AliaksandrSiarohin/video-preprocessing.git && pip install -r $(pwd)/requirements.txt


