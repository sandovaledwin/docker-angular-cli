FROM node:8.8.1-alpine

LABEL authors="Edwin Sandoval <sandovaledwin@hotmail.com>"

RUN  apk update \
  && apk add --update alpine-sdk \
  && apk add --no-cache --virtual .gyp python make g++ 

USER node
ENV  NPM_CONFIG_PREFIX=~/.npm-global
RUN  mkdir ~/.npm-global
RUN  npm install -g @angular/cli@1.4.8 \
  && npm cache clear --force

USER root
RUN  apk del alpine-sdk \
  && apk del .gyp \
  && rm -rf /tmp/* /var/cache/apk/* *.tar.gz ~/.npm \  
  && sed -i -e "s/bin\/ash/bin\/sh/" /etc/passwd
