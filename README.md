<img alt="Couchpotato" src="assets/couchpotato.png" height="80"> <img alt="Jackett" src="assets/jackett.png" height="80">
<img alt="Deluge" src="assets/deluge.png" height="80"> <img alt="Plex" src="assets/plex.png" height="80">

# Docker-mediacenter

A very simple way to setup a media center at home. :)
Includes:
- Couchpotato to find movies you want to download easily
- Jackett to get the torrents from all trackers
- Deluge to download the torrents
- Finally Plex for watching the movies on your PS4 (or wherever you want)!

You'll have to configure Couchpotato to use jackett (settings/searcher/ add Jackett provider url in torrentpotato).
You'll also have to configure deluge to:
- Download in /downloads
- Move completed downloads to /downloads/done
- Autoadd .torrent files from /autoadd

I'm not using the rpc com between couchpotato and deluge as I add a lot of problems with it.
Instead I simply put the torrents in that /autoadd folder and they are automatically downloaded by deluge.
Plex will serve the downloaded files which are in /downloads/done. 

In a near future  I'll try to automate this configuration.

# Dashboards
- Couchpotato: http://localhost:5050
- Jackett: http://localhost:9117
- Deluge: http://localhost:8112
- Plex: http://localhost:32400

# Installation

Simply do:

```
make
docker-compose up -d
```
