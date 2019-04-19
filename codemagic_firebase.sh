#!/bin/sh
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" < /dev/null 2> /dev/null

brew install base64
echo "===Base64 Installed Successfully"

echo $IOS_FIREBASE |  /usr/local/Cellar/base64/1.5/bin/base64 --decode > $FCI_BUILD_DIR/ios/GoogleService-Info.plist