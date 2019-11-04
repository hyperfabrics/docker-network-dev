#!/bin/bash
# Script to register new Fabric-CA for a org.
if [ -z $1 ];
then
    echo  "Usage: ./register-ca.sh ORG_NAME  CA_NAME"
    echo  "Utility for register new CA for an org"
    echo  "Please specify ORG!!!"
    exit 0
else
    ORG=$1
    echo "ORG_NAME: $ORG"
fi
if [-z $2]
then 
  echo "Default CA_NAME ca.$ORG.hyperfabrics.com"
  CA=ca
else
     CA=$2
     echo "CA_NAME: $CA"
fi

#export FABRIC_CA_CLIENT_HOME=/etc/hyperledger/fabric-ca-client/$ORG/$CA
CA_NAME= "${CA}.${ORG}.hyperfabrics.com" 

echo "CA_NAME: $CA_NAME"