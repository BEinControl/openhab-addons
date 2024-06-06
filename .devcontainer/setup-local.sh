#!/bin/bash
set -eux
mkdir openhab-distro
wget -O /tmp/openhab-download.zip https://ci.openhab.org/job/openHAB-Distribution/lastSuccessfulBuild/artifact/distributions/openhab/target/openhab-4.2.0-SNAPSHOT.zip
unzip /tmp/openhab-download.zip -d ./openhab-distro
rm /tmp/openhab-download.zip
cp -r ./openhab-addons/.devcontainer/conf/. ./openhab-distro/conf/.