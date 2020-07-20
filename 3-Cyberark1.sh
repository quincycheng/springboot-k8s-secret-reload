#!/bin/bash

oc apply -f openshift/secret-Cyberark1.yaml
mysql -h 127.0.0.1 -u cityapp -pNewPassword -e "SET PASSWORD FOR cityapp@'%' = PASSWORD('Cyberark1')";

