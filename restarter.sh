#!/bin/bash

# Credentials
USERNAME=pldthome
PASSWORD=your-router-password

# Log-in to the system
curl \
    --data "loginName=${USERNAME}" \
    --data "loginPassword=${PASSWORD}" \
    http://192.168.1.1/goform/formLogin

# Run reboot :D
curl http://192.168.1.1/goform/RebootSettings
