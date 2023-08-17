  --------------------------------------------------------------

  docker run -d \
  --name=transmission \
  -e PUID=1000 \
  -e PGID=1000 \
  -e TZ=Etc/UTC \
  -p 9091:9091 \
  -p 51413:51413 \
  -p 51413:51413/udp \
  -v /mnt/nfs/docker_config/transmission:/config \
  -v /mnt/nfs/downloads:/downloads \
  -v /mnt/nfs/Movies:/downloads/Movies \
  -v /mnt/nfs/Tv/sonarr:/downloads/Tv \
  --restart unless-stopped \
  lscr.io/linuxserver/transmission:latest


  docker run -d \
  --name=sonarr \
  -e PUID=1000 \
  -e PGID=1000 \
  -e TZ=Etc/UTC \
  -p 8989:8989 \
  -v /mnt/nfs/docker_config/sonarr:/config \
  -v /mnt/nfs/Tv/sonarr:/tv \
  -v /mnt/nfs/Downloads:/downloads \
  --restart unless-stopped \
  lscr.io/linuxserver/sonarr:latest


  docker run -d \
  --name=radarr \
  -e PUID=1000 \
  -e PGID=1000 \
  -e TZ=Etc/UTC \
  -p 7878:7878 \
  -v /mnt/nfs/Movies:/movies \
  -v /mnt/nfs/docker_config/radarr:/config \
  -v /mnt/nfs/Downloads:/downloads \
  --restart unless-stopped \
  lscr.io/linuxserver/radarr:latest


  docker run -d \
  --name=prowlarr \
  -e PUID=1000 \
  -e PGID=1000 \
  -e TZ=Etc/UTC \
  -p 9696:9696 \
  -v /mnt/nfs/docker_config/prowlarr:/config \
  --restart unless-stopped \
  lscr.io/linuxserver/prowlarr:latest

----------------------------------------------------------------

docker run -d \
  --name=heimdall \
  -e PUID=1000 \
  -e PGID=1000 \
  -e TZ=Etc/UTC \
  -p 80:80 \
  -v heimdall:/config \
  --restart unless-stopped \
  lscr.io/linuxserver/heimdall:latest

-----------------------------------------------------------------

docker run -d \
  --name=openvscode-server \
  -e PUID=1000 \
  -e PGID=1000 \
  -e TZ=Etc/UTC \
  -p 3030:3000 \
  -v vscode:/config \
  --restart unless-stopped \
  lscr.io/linuxserver/openvscode-server:latest
