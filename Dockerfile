FROM python:3.8.1-alpine

COPY . /app

WORKDIR /app

RUN apk update

RUN apk add make automake gcc g++ subversion python3-dev

RUN apk add apk add jpeg-dev zlib-dev libjpeg 

RUN pip install -r requirements.txt

CMD ["python","app.py"]