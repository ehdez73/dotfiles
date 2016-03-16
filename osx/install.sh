#!/bin/bash
ARG=$1
set -x

# install brew & cask
if test ! $(which brew) 
then
  /user/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi
brew bundle

# virtualenv & virtualenvwrapper
pip install virtualenv virtualenvwrapper
