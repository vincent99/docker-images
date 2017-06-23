#!/bin/sh
set +e

if [ -z "$SLACK_TOKEN" ]; then
  echo "SLACK_TOKEN is required"
  exit 1
fi

if [ -z "$SLACK_CHANNEL" ]; then
  echo "SLACK_CHANNEL is required"
  exit 1
fi
if [ -z "$IRC_USERNAME" ]; then
  echo "IRC_USERNAME is required"
  exit 1
fi
if [ -z "$IRC_PASSWORD" ]; then
  echo "IRC_PASSWORD is required"
  exit 1
fi

if [ -z "$IRC_CHANNEL" ]; then
  echo "IRC_CHANNEL is required"
  exit 1
fi

cp config.json.tpl config.json
sed -i "s/%%SLACK_TOKEN%%/${SLACK_TOKEN}/" config.json
sed -i "s/%%SLACK_CHANNEL%%/${SLACK_CHANNEL}/" config.json
sed -i "s/%%IRC_USERNAME%%/${IRC_USERNAME}/" config.json
sed -i "s/%%IRC_PASSWORD%%/${IRC_PASSWORD}/" config.json
sed -i "s/%%IRC_CHANNEL%%/${IRC_CHANNEL}/" config.json
/node_modules/.bin/slack-irc --config /config.json
