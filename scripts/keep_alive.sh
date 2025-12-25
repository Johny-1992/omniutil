#!/bin/bash

# URL de votre application
URL="https://omniutil.onrender.com/health"

# Boucle infinie pour envoyer une requête toutes les 5 minutes
while true; do
    echo "Pinging $URL at $(date)"
    curl -s $URL > /dev/null
    sleep 300 # Attendre 300 secondes (5 minutes)
done
