FROM ubuntu:18.04
LABEL maintainer="LuisFlores" email="lfloresh@uni.pe"
RUN apt-get update && apt-get install -y python3-pip python3-dev

RUN apt-get install -y stress

RUN pip3 install Flask

RUN pip3 install Flask-WTF

RUN pip3 install boto3

RUN pip3 install Pillow==6.2.2

RUN pip3 install requests

COPY . /app

EXPOSE 7000

ENV FLASK_APP=/app/application.py

ENV LC_ALL=C.UTF-8

ENV LANG=C.UTF-8

CMD ["/usr/local/bin/flask","run","--host=0.0.0.0","--port=7000"]