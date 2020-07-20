#!/bin/bash

./restart-db.sh
./addrole.sh
./buildImage.sh
oc apply -f openshift/secret-Cyberark1.yaml
./redeploy.sh
