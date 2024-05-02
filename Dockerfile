FROM python:3.11-slim

WORKDIR /code 

COPY ./requirements.txt ./

RUN apt-get update && apt-get install git -y && apt-get install curl -y

RUN curl -fsSL https://ollama.com/install.sh | sh

COPY ./src ./src

EXPOSE 8000
