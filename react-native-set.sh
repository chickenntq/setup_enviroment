common_set()
{
  echo "#Set Common Enviroment"

  echo "#Install Brew"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

  echo "#Install Git"
  brew install git

  echo "#Install Node"
  brew install node

  echo "#Install Watchman"
  brew install watchman
}

android_set()
{
  echo "#Set Android Enviroment"

  echo "#Install Java"
  brew tap homebrew/cask-versions
  brew install --cask zulu11

  echo "#Install Android Studio"
  brew install --cask android-studio

  echo "#Install Android SDK"
  brew install --cask android-sdk

  echo "#Install Android Platform Tools"
  brew install --cask android-platform-tools

  echo "export ANDROID_SDK_ROOT=\$HOME/Library/Android/sdk" >> ~/.bash_profile
  echo "export PATH=\$PATH:\$ANDROID_SDK_ROOT/emulator" >> ~/.bash_profile
  echo "export PATH=\$PATH:\$ANDROID_SDK_ROOT/platform-tools" >> ~/.bash_profile
  echo "export ANDROID_HOME=\$HOME/Library/Android/sdk" >> ~/.bash_profile

}

ios_set() {
  echo "#Set IOS Enviroment"

  #echo "#Install MAS"
  #brew install mas

  #echo "#Get Version Xcode"
  #raw_text=$(mas search xcode)

  #echo "#Install xcode"
  #mas install 497799835

  open "https://xcodereleases.com/"
}

echo "#Start Setup React Native Enviroment"
android_set
ios_set