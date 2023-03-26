FROM node:latest
COPY install.sh /tmp/install.sh
RUN sh -x /tmp/install.sh
