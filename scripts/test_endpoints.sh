#!/bin/bash

# URL de base de l'application
BASE_URL="https://omniutil.onrender.com"
API_KEY="622a26b0d6a0ad49c3d689250c2043fffdebbbd768303b75043f61a90181b428"

# Tester la route racine
echo "Testing root endpoint..."
curl -X GET $BASE_URL/

# Tester l'endpoint de santé
echo -e "\nTesting health endpoint..."
curl -X GET $BASE_URL/health

# Tester la génération du QR code
echo -e "\nTesting QR code generation endpoint..."
curl -X GET "$BASE_URL/api/qr/generate-omniutil-qr" \
  -H "x-api-key: $API_KEY"

# Tester l'endpoint de validation des partenaires
echo -e "\nTesting partner validation endpoint..."
curl -X POST "$BASE_URL/api/partner/request" \
  -H "Content-Type: application/json" \
  -H "x-api-key: $API_KEY" \
  -d '{"ecosystemId": "airtel"}'

