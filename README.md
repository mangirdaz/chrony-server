# Chrony NTP server based on Atomic
Docker container for Chrony ntp-server based on Red Hat Atomic

## Run
docker run -d --name ntp-server --privileged --restart=always --net=host -v /path/to/local/data-dir:/var/lib/chrony mangirdas/chrony

## Build
docker build -i mangirdas/chrony .


