#!/bin/bash

oc apply -f openshift/secret-NewPassword.yaml
mysql -h 127.0.0.1 -u cityapp -pCyberark1 -e "SET PASSWORD FOR cityapp@'%' = PASSWORD('NewPassword')";

