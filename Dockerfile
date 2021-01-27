FROM python:3.9

COPY /datasette/docker/requirements/ /tmp/requirements/

RUN python -m pip install --upgrade pip
RUN python -m pip install -r /tmp/requirements/base.txt

COPY ./entrypoint.sh /app
RUN chmod +x docker-entrypoint.sh
ENTRYPOINT ["/app/docker-entrypoint.sh"]

EXPOSE 8001