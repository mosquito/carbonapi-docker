FROM python:2-alpine

ENV DOCKER_ENTRYPOINT /usr/bin/carbonapi

ADD carbonapi /usr/bin/carbonapi

RUN chmod a+x /usr/bin/carbonapi

ENTRYPOINT ["/usr/bin/carbonapi"]
