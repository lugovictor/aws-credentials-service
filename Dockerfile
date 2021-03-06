FROM registry.opensource.zalan.do/stups/python:latest

COPY requirements.txt /
RUN pip3 install -r /requirements.txt

COPY app.py /
COPY swagger.yaml /

WORKDIR /data
CMD /app.py
