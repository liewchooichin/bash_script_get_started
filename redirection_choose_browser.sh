#!/bin/bash
# $ which -a google-chrome
# /usr/bin/google-chrome
# /bin/google-chrome
# $ which -a firefox
# /usr/bin/firefox
# /bin/firefox
# /snap/bin/firefox
# $ which -a chromium
# /snap/bin/chromium
# Use here document to display a block of text.
# This script provides an easy way for users to choose between browsers.
echo "These are the web browsers on this system:"

# Start here document
cat << EOF
/bin/google-chrome
/bin/firefox
/snap/bin/chromium
EOF
# end of here document

echo -n "Which is your favorite browser? "
read browser

echo "Starting $browser ..."
$browser &


