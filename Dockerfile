FROM ubuntu:latest
RUN apt-get update -y
RUN apt-get install python3 -y
RUN apt-get install python3-pip -y
RUN pip3 install flask
COPY ./login.py /login.py
ENTRYPOINT python3 login.py 