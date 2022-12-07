#https://stackoverflow.com/questions/42136931/docker-compose-mysql-import-sql?rq=1
# https://ozzyczech.cz/webdesign/maria-db-and-docker-compose/
# Fährt DB hoch und initialisiert sie mit dem Skript unter databases. Kann dann von localhost über Port 3306 zugegriffen werden
# Einloggen in den Docker-Container und man findet das init-Skript sowie die Dateien für die Datenbanken
# Um die DB komplett wegzuschmeissen und neu aufzusetzen: docker-compose stop, docker-compose rm (über das Image zu löschen --> nur dann DB weg) und docker start oder docker-compose up
#docker-compose stop
#docker-compose rm
docker-compose up
#docker-compose images
