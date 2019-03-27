#!/usr/bin/env bash

function install_cleanup() {
  echo "Installing https://github.com/fwartner/mac-cleanup"
  curl -o cleanup_mac https://raw.githubusercontent.com/fwartner/mac-cleanup/master/cleanup.sh
  chmod +x cleanup_mac
}

function install_ngrok() {
  echo "Installing https://github.com/inconshreveable/ngrok"
  curl -o ngrok.zip https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-darwin-amd64.zip
  unzip ngrok.zip && rm ngrok.zip
  chmod +x ngrok
}

function install_dependencies() {
  install_cleanup
  install_ngrok
}

"${@:-install_dependencies}"
