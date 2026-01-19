#!/bin/bash

git clone https://github.com/flutter/flutter.git -b stable
export PATH="$PATH:flutter/bin"
echo 'export PATH="$PATH:flutter/bin"' >> ~/.bashrc

mkdir android-sdk
cd android-sdk
wget https://dl.google.com/android/repository/commandlinetools-linux-8512546_latest.zip
unzip commandlinetools-linux-8512546_latest.zip

export ANDROID_SDK_ROOT=android-sdk
export ANDROID_HOME=android-sdk
export PATH="$PATH:$ANDROID_SDK_ROOT/cmdline-tools/bin"
echo 'export ANDROID_SDK_ROOT=android-sdk' >> ~/.bashrc
echo 'export ANDROID_HOME=android-sdk' >> ~/.bashrc
echo 'export PATH="$PATH:$ANDROID_SDK_ROOT/cmdline-tools/bin"' >> ~/.bashrc
source ~/.bashrc

yes | sdkmanager --sdk_root=android-sdk --licenses
sdkmanager --sdk_root=android-sdk "platforms;android-33" "build-tools;33.0.2" "platform-tools"

echo "Instalasi berhasil! Terima kasih sudah menggunakan Flutter Installation DOM Cloud by @matzzxz"
