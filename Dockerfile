FROM python:3.6-alpine

ADD . /

RUN pip install -r requirements.txt
CMD python app.py