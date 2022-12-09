# see: https://hub.docker.com/_/postgres
set -e

sudo psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
	CREATE USER weclouds;
	CREATE DATABASE weclouds;
	GRANT ALL PRIVILEGES ON DATABASE weclouds TO weclouds;
EOSQL
