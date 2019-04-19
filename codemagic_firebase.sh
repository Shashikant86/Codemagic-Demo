#!/bin/sh
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" < /dev/null 2> /dev/null

brew install base64
echo "===Base64 Installed Successfully"
echo "=========================="
which base64 

echo "=========================="

echo $IOS_FIREBASE | /usr/bin/base64 --decode > $FCI_BUILD_DIR/ios/GoogleService-Info.plist