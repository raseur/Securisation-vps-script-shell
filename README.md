# Securisation-vps-script-shell
Un script en shell afin de sécuriser votre vps ubuntu avec ufw et fail2ban.

# Explication :
Ce script effectue d'abord une mise à jour des paquets, puis installe les paquets fail2ban et ufw pour renforcer la sécurité du serveur. fail2ban est un logiciel de détection d'intrusion qui peut bannir des IP qui tentent de se connecter de manière répétée avec des identifiants incorrects. ufw est un pare-feu qui permet de contrôler les connexions entrantes et sortantes sur le serveur.

Le script configure fail2ban pour bannir les IP pendant 24h en cas d'échec de connexion et configure ufw pour n'autoriser que les connexions SSH entrantes et sortantes.

# Utilisation :
Il suffit de télécharger le script ou bien de le créer sur la machine ubuntu.
Puis l'exécuter : 
> cd /le/chemin/vers/le/script
<br> ./script.sh
