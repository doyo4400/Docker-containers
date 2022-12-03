#! /bin/bash
# https://hub.docker.com/r/linuxserver/firefox

docker run -d --name=firefox \
  -e PUID=1000 \
  -e PGID=1000 \
  -e TZ=Europe/Paris \
  -p 3000:3000 \
  --shm-size="2gb" \
  --restart unless-stopped \
  lscr.io/linuxserver/firefox:latest

 #--security-opt seccomp=unconfined `#optional` \
#-v /path/to/config:/config \

# enter in container with command line : docker exec -it firefox bash
# stop container : docker firefox stop
# delete docker rm firefox


echo "install https://addons.mozilla.org/fr/firefox/addon/adblock-plus/"
echo "https://addons.mozilla.org/fr/firefox/addon/bypass-paywalls-clean/"
