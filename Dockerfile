FROM python:3.9

WORKDIR /app
COPY . .



RUN apt-get update && apt-get install -y git 

RUN python3 -m pip install --upgrade pip setuptools wheel && pip install --no-binary :all: pandas && pip install scikit-image
RUN git clone https://github.com/ssamkyu01/video-preprocessing.git && pip install --use-pep517 -r $(pwd)/requirements.txt


