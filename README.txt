Load "https://github.com/angkarns/ArubaSocketServer" sourcecode and extract to C:\
Downlaod and install nodejs "https://nodejs.org/en/download"
Install Node Packet Manager
  > cd c:\ArubaSocketServer
  > npm install
enable Windows-Subsystem via Windows Command Prompt
  > cd \
  > dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
  > dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart
  > wsl --update
  > wsl --set-default-version 2
Install Ubuntu on Windows Store
Install docker for windows desktop "https://hub.docker.com/editions/community/docker-ce-desktop-windows/"
Change Docker desktop Resource/WLS-Integration Setting to Ubuntu
Load "https://github.com/angkarns/ArubaPhpDocker" sourcecode and extract to C:\
Install Apache-PHP
  > cd c:\ArubaPhpDocker
  > docker run -d -p 80:80 --name my-apache-php-app -v C:\ArubaPhpDocker:/var/www/html php:7.2-apache
Install PHP-extension
  > docker ps
  > docker exec -ti <your-php-container> sh
   # docker-php-ext-install mysqli 
   # docker-php-ext-enable mysqli
   # apachectl restart
Install MySql
  > docker run --name iot-mysql -e MYSQL_ROOT_PASSWORD=root00-- -e MYSQL_DATABASE=iot -e TZ=Asia/Bangkok -p 3306:3306 -d mysql:8.0.33
Install phpMyAdmin
  > docker run --name phpmyadmin -d --link iot-mysql:db -p 8081:80 phpmyadmin
phpMyAdmin> Edit or Add new sql-root-user password to "Native-MySql-Authentication"
phpMyAdmin> import "iot-table.sql" file to "iot" database
