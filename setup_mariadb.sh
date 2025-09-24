#!/bin/bash

# Installer MariaDB
dnf install -y mariadb-server mariadb

# Démarrer et activer MariaDB
systemctl enable --now mariadb

# Configurer MariaDB
mysql -e "CREATE DATABASE stagiaire_db;"
mysql -e "CREATE USER 'stagiaire'@'%' IDENTIFIED BY 'motdepasse';"
mysql -e "GRANT ALL PRIVILEGES ON stagiaire_db.* TO 'stagiaire'@'%';"
mysql -e "FLUSH PRIVILEGES;"

# Garder le conteneur actif
tail -f /dev/null
