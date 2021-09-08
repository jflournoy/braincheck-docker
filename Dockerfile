# syntax=docker/dockerfile:1

FROM python:3.8-slim-buster
COPY braincheck-main.zip braincheck-main.zip
RUN apt update
RUN apt install -y unzip
RUN unzip braincheck-main.zip 
RUN mv /braincheck-main /app
WORKDIR /app
RUN pip3 install -r requirements.txt
CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]

