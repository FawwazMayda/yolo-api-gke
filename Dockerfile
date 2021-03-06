# syntax=docker/dockerfile:1

FROM python:3.8-slim-buster

WORKDIR /app

COPY . .

RUN pip install -r requirements.txt

ENV bucket_name="detection_results_bucket"

CMD ["gunicorn","--workers","4","--bind","0.0.0.0:5000","main:app"]