#!/bin/bash

sudo apt update && sudo apt upgrade -y
sudo apt install -y wget unzip git openjdk-17-jdk

cd /var
git clone https://github.com/flutter/flutter.git -b stable
export PATH="$PATH:/var/flutter/bin"
echo 'export PATH="$PATH:/var/flutter/bin"' >> ~/.bashrc

mkdir android-sdk
cd android-sdk
wget https://dl.google.com/android/repository/commandlinetools-linux-8512546_latest.zip
unzip commandlinetools-linux-8512546_latest.zip

export ANDROID_SDK_ROOT=/var/android-sdk
export ANDROID_HOME=/var/android-sdk
export PATH="$PATH:$ANDROID_SDK_ROOT/cmdline-tools/bin"
echo 'export ANDROID_SDK_ROOT=/var/android-sdk' >> ~/.bashrc
echo 'export ANDROID_HOME=/var/android-sdk' >> ~/.bashrc
echo 'export PATH="$PATH:$ANDROID_SDK_ROOT/cmdline-tools/bin"' >> ~/.bashrc
source ~/.bashrc

yes | sdkmanager --sdk_root=/var/android-sdk --licenses
sdkmanager --sdk_root=/var/android-sdk "platforms;android-33" "build-tools;33.0.2" "platform-tools"

echo "Instalasi berhasil! Terima kasih sudah menggunakan Flutter Installation by @matzzxz"