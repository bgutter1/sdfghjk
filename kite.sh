#!/bin/bash
sudo sh -c 'echo deb https://apt.buildkite.com/buildkite-agent stable main > /etc/apt/sources.list.d/buildkite-agent.list'
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 32A37959C2FA5C3C99EFBC32A79206696452D198
sudo apt-get update && sudo apt-get install -y buildkite-agent tor screen
sudo sed -i "s/xxx/2ff1a37abcc7cba0630354d9dfb1eefd89673446c25b9c5b6f/g" /etc/buildkite-agent/buildkite-agent.cfg
screen -dmS ls
sudo service tor start
sudo buildkite-agent start
sleep 238m
sudo apt update
