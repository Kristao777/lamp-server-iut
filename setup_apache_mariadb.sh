#!/bin/bash

# Mettre à jour le système
dnf update -y

# Installer Apache (httpd)
dnf install -y httpd
systemctl enable --now httpd

# Installer MariaDB
dnf install -y mariadb-server mariadb
systemctl enable --now mariadb

# Configurer MariaDB
mysql -e "CREATE DATABASE stagiaire_db;"
mysql -e "CREATE USER 'stagiaire'@'%' IDENTIFIED BY 'motdepasse';"
mysql -e "GRANT ALL PRIVILEGES ON stagiaire_db.* TO 'stagiaire'@'%';"
mysql -e "FLUSH PRIVILEGES;"

# Configurer Apache pour afficher une page de test
echo "<h1>Bienvenue sur le serveur Apache + MariaDB !</h1>" > /var/www/html/index.html
echo "Base de données : stagiaire_db, utilisateur : stagiaire, mot de passe : motdepasse" >> /var/www/html/index.html

# Garder le conteneur actif
tail -f /dev/null
