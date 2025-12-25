#!/bin/bash

# Démarrer le script de ping
nohup ~/omniutil/scripts/keep_alive.sh > ~/omniutil/scripts/keep_alive.log 2>&1 &

# Démarrer le script de surveillance
nohup ~/omniutil/scripts/monitor_app.sh > ~/omniutil/scripts/monitor_app.log 2>&1 &

echo "Scripts salvateurs démarrés !"
