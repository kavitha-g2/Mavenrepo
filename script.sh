#!/bin/bash
`wget https://github.com/SudhirG85/botrepo/raw/master/myhubot.zip`
`/usr/bin/unzip myhubot.zip -d myhubot`
chmod -R 755 myhubot
rm -rf myhubot.zip
cd myhubot
sed -i -e "s/npm install/# /g" bin/hubot
sed -i -e "s/node/nodejs/g" node_modules/.bin/coffee
export EXPRESS_PORT=8787
export PATH="node_modules/.bin:node_modules/hubot/node_modules/.bin:$PATH"
export HUBOT_SLACK_TOKEN=xoxb-137208300256-PZLQTquPGzmjkL3SpN9J5MCP
export HUBOT_JENKINS_URL=http://10.224.86.155:8090/jenkins
export HUBOT_JENKINS_AUTH=gsudhir:devops123
nohup ./bin/hubot -a slack > hubot.log
echo "Bot Deployed"
sleep 20

xoxb-137208300256-PZLQTquPGzmjkL3SpN9J5MCP