ARG BUILD_FROM
FROM $BUILD_FROM

RUN apk add --no-cache \
    python3 \
    py3-pip

ADD app/ /app
WORKDIR /app

RUN pip3 install -r requirements.txt
CMD python3 app.py