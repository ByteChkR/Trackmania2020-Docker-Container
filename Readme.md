# Trackmania 2020 Dedicated Server - Docker Container

## Building the Image

1. Clone the Repository
2. Run `docker build . -t <image-name>`


## Configuring the Server

> You can use the `ExampleVolume` Directory as a starting point.

Create the following Directory Structure

- `Volume` (Name can be changed)
	- `Config`
	- `Maps`
		- `MatchSettings`

Create the File `Volume/Config/dedicated_cfg.txt`.
An example config is contained in the `ExampleVolume/Config` Directory.

Add the maps for the server into the `Volume/Maps` directory.

Create `Volume/Maps/MatchSettings/tracklist.txt`.
An example track list can be found in `ExampleVolume/Maps/MatchSettings`

## Starting the Server

Run the container with
```bash
# Run the Docker container
# 	-p 2350:2350 Pass through port 2350 TCP
#	-p 2350:2350/udp Pass through port 2350 UDP
#	-v <full-path-to-Volume-Directory>:/server/Data Set the Volume for the Server Data
#	byt3chkr/trackmania2020-server:latest The Image to use for the docker container
docker run \
	-p 2350:2350 \
	-p 2350:2350/udp\
	-v <full-path-to-Volume-Directory>:/server/Data \
	byt3chkr/trackmania2020-server:latest
```

> Use the `-d` flag to run the server as a background process.