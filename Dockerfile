FROM python:3.8.1-alpine

COPY . /app

WORKDIR /app

RUN sudo apt-get -y install libc-dev

RUN sudo apt-get -y install build-essential

RUN pip install -U pip

RUN pip install -r requirements.txt

CMD ["python","app.py"]