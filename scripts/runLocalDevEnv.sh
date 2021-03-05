#!/bin/bash

scripts/setBasePath.sh https://forge.etsi.org/rep/NGSI-LD/NGSI-LD/raw/master http://localhost:8090
docker run --name spec-server --rm -d -v ${PWD}/:/ngsi  -e FOLDER=/ngsi  -p 8090:8080 halverneus/static-file-server
read -p "Press enter to finish editing"
docker stop spec-server
scripts/setBasePath.sh http://localhost:8090 https://forge.etsi.org/rep/NGSI-LD/NGSI-LD/raw/master
