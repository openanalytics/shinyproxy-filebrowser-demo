FROM filebrowser/filebrowser:s6

RUN apk add jq

ENV ROOT_PATH /tmp/

COPY settings.json /defaults/settings.json.tpl
COPY 20-config /etc/cont-init.d/20-config
