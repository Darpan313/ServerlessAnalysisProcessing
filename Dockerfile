FROM frolvlad/alpine-python-machinelearning

COPY . /app

WORKDIR /app

RUN pip install -r requirements.txt

CMD ["python","app.py"]