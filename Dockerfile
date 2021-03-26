FROM python:3
USER root

RUN cd /opt

# ENTRYPOINT ["python", "/root/opt/web.py"]
ENTRYPOINT ["/bin/sh", "-c", "while :; do sleep 10; done"]
