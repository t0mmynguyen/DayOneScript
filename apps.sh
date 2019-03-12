# Install Home Brew (This may take some time, as it will need to install xcode command line tools)
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install Google Chrome (via brew)
brew cask install google-chrome

# Open Chrome Browser
open /Applications/Google\ Chrome.app

# Install tilt (windmilleng/tilt)
brew tap windmilleng/tap
brew install windmilleng/tap/tilt

# wget
brew install wget

# TLDR
brew install tldr

# Install Docker for Mac
## https://docs.docker.com/docker-for-mac/install/
wget https://download.docker.com/mac/stable/Docker.dmg
sudo hdiutil attach Docker.dmg
cp -R /Volumes/Docker/Docker.app /Applications
open /Applications/Docker.app
sudo hdiutil unmount /Applications/Docker.app

# Enable Kubernetes on docker-for-mac
## Kubernetes > Preferences > Kubernetes > Enable Kubernetes
## Kubernetes > Preferences > Advanced. Increase CPU and Memory limits, don't overallocate. Give it what you can afford to on your machine. Lastly, Apply & Restart
## docker-for-mac will restart

# Install VSCode
brew cask install visual-studio-code
open /Applications/Visual\ Studio\ Code.app

# Install Github CLI
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Other utilities
brew install watch
brew install telnet
brew install ack
