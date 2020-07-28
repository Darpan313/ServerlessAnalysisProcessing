FROM contraslash/alpine-pillow

COPY . /app

WORKDIR /app

# Install pip, Python and matplotlib required libraries
RUN apk update && apk install python python-dev python-pip \
    libxft-dev libfreetype6 libfreetype6-dev

# Install matplotlib
RUN pip install 'matplotlib==1.4.3'

RUN pip install wordcloud 

RUN pip install -r requirements.txt

CMD ["python","app.py"]