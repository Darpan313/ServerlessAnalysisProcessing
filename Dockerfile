FROM python:3.8.1-alpine

COPY . /app

WORKDIR /app

RUN apk update



RUN apk add make automake gcc g++ subversion python3-dev

RUN apk add --no-cache jpeg-dev zlib-dev
RUN apk add --no-cache --virtual .build-deps build-base linux-headers \
    && pip install Pillow

RUN pip install -r requirements.txt

CMD ["python","app.py"]