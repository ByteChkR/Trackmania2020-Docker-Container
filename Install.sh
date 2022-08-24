# Install Required Packages
apt update -y
apt upgrade -y
apt-get install wget unzip -y

# Add User for the Server
useradd -m -p $SRV_PASS -s /bin/bash $SRV_USER

# Download and Unpack the Trackmania Server
wget $TM_SERVER_URL
unzip TrackmaniaServer_Latest.zip
rm TrackmaniaServer_Latest.zip


# Create Symlinks to link the files correctly into the server directory

# Symlink the Configuration
ln -s /server/Data/Config/dedicated_cfg.txt /server/UserData/Config/dedicated_cfg.txt

# Make sure the UserData directory has no entry for Maps. As we are symlinking it from Data/Maps
rm -rf /server/UserData/Maps
# Symlink Data/Maps to UserData/Maps
ln -s /server/Data/Maps /server/UserData