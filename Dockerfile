#script to build the image based on ubuntu

FROM debian:jessie

MAINTAINER ppensier

RUN apt-get update && apt-get install -y libxml2-utils

RUN echo '#bin/sh' > validation.sh

RUN echo 'xmllint --noout $1 --schema $2' >> validation.sh

RUN chmod +x validation.sh

