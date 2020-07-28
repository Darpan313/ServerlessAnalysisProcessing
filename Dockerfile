FROM czentye/matplotlib-minimal

COPY . /app

WORKDIR /app

RUN apk update \
    && apk add --virtual build-deps gcc python3-dev musl-dev zlib-dev postgresql-dev jpeg-dev \  # will be removed after dependent \
    && apk add postgresql zlib jpeg \
    && pip install psycopg2 Pillow==5.0.0 \ 
    && apk del build-deps \


RUN pip install wordcloud 

RUN pip install -r requirements.txt

CMD ["python","app.py"]