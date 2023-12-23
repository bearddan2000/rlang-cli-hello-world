FROM ubuntu:22.04

WORKDIR /workspace

RUN apt update

RUN DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
    r-base

WORKDIR /code

COPY bin .

# CMD "/usr/bin/Rscript /code/main.r"