FROM python:3.9

WORKDIR /app
COPY . .



RUN apt-get update && apt-get install -y git 
RUN apt install libpython3.9-dev

RUN python3 -m pip install --upgrade pip setuptools wheel
RUN git clone https://github.com/ssamkyu01/video-preprocessing.git && pip install --use-pep517 -r $(pwd)/requirements.txt


