#!/bin/bash

docker run -d --name="Zoneminder" \
--net="bridge" \
--privileged="true" \
-p 8080:80/tcp \
-e TZ="Europe/Paris" \
-e SHMEM="75%" \
-v "/home/kyis/dev/zm1/config":"/config":rw \
-v "/home/kyis/dev/zm1/data":"/var/cache/zoneminder":rw \
5bee2dbc5c6e

