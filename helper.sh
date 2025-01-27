#!/usr/bin/bash

chmod +x down.sh
chmod +x up.sh

wget -qO - https://www.mongodb.org/static/pgp/server-4.4.asc | sudo apt-key add - 

echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/4.4 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.4.list

sudo apt-get update

sudo apt-get install mysql-client-core-8.0 postgresql-client mongodb-org-shell mongodb-org-tools 