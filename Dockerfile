FROM python:3.8.12 AS builder
ADD . /app
WORKDIR /app

# We are installing a dependency here directly into our app source dir
RUN pip3 install --target=/app -r /app/requirements.txt
RUN python3 /app/main.py


