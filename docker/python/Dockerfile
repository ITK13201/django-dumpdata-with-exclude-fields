FROM python:3.10-buster

ENV PYTHONDONTWRITEBITECOTE 1
ENV PYTHONUNBUFFERED 1

RUN mkdir /src \
    && mkdir -p /var/log/python

WORKDIR /src

RUN apt-get update \
    && pip install --upgrade pip \
    && pip install pipenv

COPY ./src/Pipfile ./Pipfile
COPY ./src/Pipfile.lock ./Pipfile.lock

RUN pipenv install --ignore-pipfile --deploy --system --dev

COPY ./src .
