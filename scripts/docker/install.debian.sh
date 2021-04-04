#!/bin/bash
set -e

echo "⏳ Updating Aptitude…"
apt-get update -qq > /dev/nul
echo "⏳ Installing curl…"
apt-get install -qq -y curl > /dev/nul
echo "⏳ Installing Node.js…"
curl -fsSL https://deb.nodesource.com/setup_${NODE_VERSION}.x | bash - > /dev/nul
apt-get install -qq -y nodejs > /dev/nul
echo "⏳ Installing Yarn…"
npm i -g yarn > /dev/nul
