#!/bin/bash

source ~/.bashrc

# Check if has necessary variables set
if [ -z "$NFS_VOLUME" ]; then
    echo "NFS_VOLUME is not set"
    exit 1
fi

if [ -z "$DOMAIN" ]; then
    echo "DOMAIN is not set"
    exit 1
fi

if [ -z "$EMAIL_ADDRESS" ]; then
    echo "EMAIL_ADDRESS is not set"
    exit 1
fi

# create folders for services
mkdir -p "${NFS_VOLUME}/docker_data/bittorrent"
mkdir -p "${NFS_VOLUME}/docker_data/gluetun"
mkdir -p "${NFS_VOLUME}/docker_data/jellyfin"
mkdir -p "${NFS_VOLUME}/docker_data/jellyfin_cache"
mkdir -p "${NFS_VOLUME}/docker_data/jellyseerr"
mkdir -p "${NFS_VOLUME}/docker_data/letsencrypt"
mkdir -p "${NFS_VOLUME}/docker_data/overseerr"
mkdir -p "${NFS_VOLUME}/docker_data/plex"
mkdir -p "${NFS_VOLUME}/docker_data/prowlarr"
mkdir -p "${NFS_VOLUME}/docker_data/radarr"
mkdir -p "${NFS_VOLUME}/docker_data/sonarr"
mkdir -p "${NFS_VOLUME}/docker_data/unpackerr"

# create folders for media
mkdir -p "${NFS_VOLUME}/data/media/movies"
mkdir -p "${NFS_VOLUME}/data/media/tv"
mkdir -p "${NFS_VOLUME}/data/torrents/movies"
mkdir -p "${NFS_VOLUME}/data/torrents/torrent_data"
mkdir -p "${NFS_VOLUME}/data/torrents/tv"

docker compose up -d