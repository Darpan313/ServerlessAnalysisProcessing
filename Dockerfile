FROM czentye/matplotlib-minimal

COPY . /app

WORKDIR /app

RUN apt-get build-dep python-imaging
RUN apt-get install libjpeg62 libjpeg62-dev

RUN pip install wordcloud 

RUN pip install -r requirements.txt

CMD ["python","app.py"]