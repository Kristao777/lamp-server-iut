# Environnement LAMP prêt à l'emploi avec Podman

Ce dépôt fournit un environnement de développement PHP/Apache/MariaDB prêt à l'emploi pour les stagiaires.

## Prérequis
- Podman (ou Docker)
- podman-compose (ou docker-compose)

## Démarrage rapide

1. Clonez ce dépôt :
   ```sh
   git clone <url-du-repo>
   cd lamp-server-iut
   ```
2. Lancez les services :
   ```sh
   podman-compose up
   ```
   ou
   ```sh
   docker-compose up
   ```

3. Accédez à votre serveur web :
   - Ouvrez votre navigateur sur : http://localhost

4. Accès à la base de données MariaDB :
   - Hôte : `localhost`
   - Port : `3306`
   - Utilisateur : `lamp_user`
   - Mot de passe : `lamp_pass`
   - Base : `lamp_db`

## Structure du projet
- `www/` : Placez ici vos fichiers PHP/HTML.
- `docker-compose.yml` : Configuration des services.

## Arrêter l'environnement
```sh
podman-compose down
```
ou
```sh
docker-compose down
```

---

Pour toute question, contactez votre encadrant.
