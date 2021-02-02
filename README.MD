# docker local dev database setup
The setup assumes you want to only connect to from your shell using the client tools, but want to handle the install and setup using docker.

## Setup
- run `chmod +x up.sh` to make  `up.sh` file executable
- run `chmod +x down.sh` to make  `down.sh` file executable
- run `./up.sh` to start databases
- run `./down.sh` to stop databases

## Connection using client tools

### Mysql
Mysql is exposed on port `3306`. To connect to mysql from your local network, make sure mysql client is installed:
```bash
sudo apt install mysql-client-core-8.0
```
Connect using tcp:
```bash 
mysql -u root -h 127.0.0.1 -P
```

### PostgreSQL
PostgreSQL is exposed on port `5432`. To connect to postgresql from your local network, make sure postgresql client is installed:

```bash 
sudo apt-get install postgresql-client 
```

Connect using:

```bash
psql -U postgres -h localhost
```

### MongoDB
MongoDB is exposed on port `27017`. To connect to mongo from your local network, make sure [mongo shell and mongo tools](https://docs.mongodb.com/manual/tutorial/install-mongodb-on-ubuntu/#mongodb-community-edition-packages) are installed:

Import the public key used by the package management system.
```bash 
wget -qO - https://www.mongodb.org/static/pgp/server-4.4.asc | sudo apt-key add - 
```

Create a list file for MongoDB:

```bash
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/4.4 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.4.list
```

Reload packages

```bash
sudo apt-get update
```

Install `mongodb-org-shell` and `mongodb-org-tools`

```bash
sudo apt-get install mongodb-org-shell mongodb-org-tools
```

## Use helper.sh to setup
- run `chmod +x helper.sh` to make  `helper.sh` file executable
- run `./helper.sh` to install clients automatically
- run `./up.sh` to start databases
- run `./down.sh` to stop databases