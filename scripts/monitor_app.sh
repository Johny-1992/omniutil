#!/bin/bash

# URL de votre application
URL="https://omniutil.onrender.com/health"

# Fonction pour vérifier si l'application est en ligne
check_app() {
    if curl -s --head --request GET $URL | grep "200 OK" > /dev/null; then
        echo "Application is up at $(date)"
    else
        echo "Application is down at $(date). Attempting to restart..."
        # Ajoutez ici la logique pour redémarrer votre application si nécessaire
        # Par exemple, vous pouvez envoyer une notification ou essayer de redémarrer le service
    fi
}

# Boucle infinie pour vérifier l'application toutes les 5 minutes
while true; do
    check_app
    sleep 300 # Attendre 300 secondes (5 minutes)
done
