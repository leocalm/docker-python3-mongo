FROM python:3.5

ENV LOGPATH /var/log

RUN apt-get update && apt-get install -y mongodb gcc musl git imagemagick wget libxml2 libxml2-dev libxslt-dev tesseract-ocr-dev tesseract-ocr xvfb gfortran zbar-tools poppler-utils

RUN mkdir -p /data/db

CMD mongod
