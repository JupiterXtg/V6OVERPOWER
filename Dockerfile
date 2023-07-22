FROM python:3.10.8-slim-buster

RUN apt update && apt upgrade -y
RUN apt install git -y
RUN pip install --upgrade pip
COPY requirements.txt /requirements.txt

RUN cd /
RUN pip3 install -U pip && pip3 install -U -r requirements.txt
RUN mkdir /V6OVERPOWER
WORKDIR /V6OVERPOWER
COPY start.sh /start.sh
CMD ["/bin/bash", "/start.sh"]
