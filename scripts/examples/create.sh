#!/bin/bash
TOKEN="/gAKzErLHId3Hc8Qs2xoSLAkGWo+kxXfUEfADGjjQoE=--b46sZUFpIIY5TIsKUNhdHezKUSMuykmuQCL9u9jQ64w="

API="http://localhost:4741"
URL_PATH="/examples"

curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "example": {
      "text": "'"${TEXT}"'"
    }
  }'

echo
