Afin de pouvoir utiliser le projet vous devez d’abord le prendre. Pour ce faire, il faut clone le projet du «group-953303 ». Une fois le projet cloné et installé en local sur votre machine il faudra installer composer et le mettre à jour avec « composer install » puis « composer update ». Ceci permettra de générer un dossier vendor indispensable.
Il faut également créer un fichier .env en tapant « cp .env.example .env » avec  «  php artisan key:generate ». Ceci est également indispensable pour relier le projet au serveur local et à la base de données.
Pour la base de donnée, un serveur mysql doit être créé. Pour ce faire «CREATE DATABASE  nom_du_projet ».
Enfin, afin de mettre à jour et créer les tables/migrations dans la base de données il faut faire «  php artisan migrate». La partie php est désormais prête et doit être lancée avec «  php artisan serv »


Enfin la partie back (api) reliée à l’application est prête. Pour démarrer l’application il faut ouvrir sur Xcode le dossier «  Restaurant Advisor » puis appuyer sur la petite flèche au niveau du répertoire qui permet de lancer un simulateur d’iPhone. 
Enfin, l’application est prête à être utilisée.
