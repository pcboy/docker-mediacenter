<img alt="Couchpotato" src="assets/couchpotato.png" height="80">
<img alt="Plex" src="assets/plex.png" height="80">
<img alt="Jellyfin" src="assets/jellyfin.png" height="80">

# Docker-mediacenter

A very simple way to setup a media center at home. :)
Includes:

- Couchpotato to find movies you want to download easily
- Transmission + Flood to download the torrents
- Plex for watching the movies on your Playstation/Android TV (or wherever you want)!
- Jellyfin, another Plex-like media server, open source.

You'll have to configure deluge to:

- Download in /downloads
- Move completed downloads to /downloads/done
- Autoadd .torrent files from /autoadd

I'm not using the rpc com between couchpotato and deluge as I had a lot of problems with it. But you may want to try that instead it that works for you.
Instead I simply put the torrents in that /autoadd folder and they are automatically downloaded by deluge.
Plex will serve the downloaded files which are in /downloads/done.

In a near future I'll try to automate this configuration.

# Dashboards

- Couchpotato: http://localhost:5050
- Transmission: http://localhost:9091
- Flood: http://localhost:4200
- Plex: http://localhost:32400
- Jellyfin: http://localhost:8096/

# Installation

Simply do:

```
make
docker-compose up -d
```

# Notes

For your plex, I highly recommend you to install [Sub-Zero](https://github.com/pannal/Sub-Zero.bundle) to get better subtitles.
