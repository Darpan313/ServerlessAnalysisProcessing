FROM czentye/matplotlib-minimal

COPY . /app

WORKDIR /app

RUN apk --update add \
    build-base \
    jpeg-dev \
    zlib-dev

RUN pip install wordcloud 

RUN pip install -r requirements.txt

CMD ["python","app.py"]