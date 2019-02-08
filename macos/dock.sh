#!/bin/sh

dockutil --no-restart --remove all
dockutil --no-restart --add "/Applications/Google Chrome.app"
dockutil --no-restart --add "/Applications/Safari.app"
dockutil --no-restart --add "/Applications/iTerm.app"
dockutil --no-restart --add "/Applications/Microsoft Outlook.app"
dockutil --no-restart --add "/Applications/Slack.app"
dockutil --no-restart --add "/Applications/1Password 7.app"
dockutil --no-restart --add "/Applications/Evernote.app"
dockutil --no-restart --add "/Applications/Remember The Milk.app"

killall Dock

echo "Success! Dock is set."