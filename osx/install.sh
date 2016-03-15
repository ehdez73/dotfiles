#!/bin/bash
ARG=$1
set -x

case "$ARG" in
  *base*)
       cd base
       brew bundle
       ;;
  *dev*)
       cd development
       brew bundle
       pip install virtualenv virtualenvwrapper
       ;;
  *)
     echo "usage $0 [base|dev]"
     exit 1
esac
