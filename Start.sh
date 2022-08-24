# Run the Server as the specified user
runuser -u $SRV_USER -- ./TrackmaniaServer /title=Trackmania /game_Settings=MatchSettings/tracklist.txt /dedicated_cfg=dedicated_cfg.txt /nodaemon

# Debug Line. Does prevent the container from exiting if the server does not start correctly
#tail -F NO_EXIT