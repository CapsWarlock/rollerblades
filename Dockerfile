FROM python:3.11.2-slim-bullseye

ARG TZ=America/New_York

VOLUME "/config"

RUN pip install requests

RUN mkdir /app
COPY ./rollerblades.py /app
RUN chmod 755 /app/rollerblades.py

ENTRYPOINT [ "python3", "-u", "/app/rollerblades.py" ]