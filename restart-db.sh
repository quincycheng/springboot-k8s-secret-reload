#mkdir -p db
#cd db
#wget https://downloads.mysql.com/docs/world.sql.gz
#gunzip world.sql 
#cd ..

docker kill mysqldb
docker rm mysqldb

docker run --name mysqldb -v ${PWD}/db:/docker-entrypoint-initdb.d \
     -e MYSQL_ROOT_PASSWORD=Cyberark1 \
     -e MYSQL_DATABASE=world \
     -e MYSQL_USER=cityapp \
     -e MYSQL_PASSWORD=Cyberark1 \
     -p "3306:3306" -d mysql:5.7.29 
