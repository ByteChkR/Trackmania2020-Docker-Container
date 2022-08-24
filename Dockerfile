FROM debian
WORKDIR /server

# Set Environment Variables
ENV TM_SERVER_URL="http://files.v04.maniaplanet.com/server/TrackmaniaServer_Latest.zip"

# The User that the Server runs under.
# Its advised to change the credentials.
ENV SRV_USER=tmserver
ENV SRV_PASS=12345678

# Expose the Port the Trackmania Server needs
EXPOSE 2350

# Copy the Scripts
COPY Install.sh Install.sh
COPY Start.sh Start.sh

# Run the Installation Script
RUN bash Install.sh

# Set the Start Command of the Container
CMD bash Start.sh