#!/bin/bash

# Run This command from local machine 

# openssl enc -aes-256-cbc -salt -in ios/GoogleService-Info.plist -out ios/GoogleService-Info.enc -k "YOUR_SECRET_PASSWORD"

# Run this command on Codemagic after you set the environment variable

# openssl enc -aes-256-cbc -d -in ios/GoogleService-Info.enc -out ios/GoogleService-Info.plist -k "YOUR_SECRET_PASSWORD_FROM_ENV_VARIABLE"