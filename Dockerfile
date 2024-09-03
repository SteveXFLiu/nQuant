FROM python:3.12

RUN set -e -x && \
    apt-get update --yes && \
    apt-get upgrade --yes && \
    apt-get install --yes --no-install-recommends \
    fonts-liberation \
    pandoc && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* && \
    mkdir /nerdieQuant

WORKDIR /nerdieQuant
COPY . /nerdieQuant

RUN set -e -x && \
    pip3 install --no-cache-dir -r requirements.txt
