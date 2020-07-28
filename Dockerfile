FROM contraslash/alpine-pillow

COPY . /app

WORKDIR /app

RUN apt-get update

# Install pip, Python and matplotlib required libraries
RUN apt-get update && apt-get install -y python python-dev python-pip \
    libxft-dev libfreetype6 libfreetype6-dev

# Install matplotlib
RUN pip install 'matplotlib==1.4.3'

RUN pip install wordcloud 

RUN pip install -r requirements.txt

CMD ["python","app.py"]