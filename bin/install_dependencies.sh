#!/usr/bin/env bash

function install_cleanup() {
  echo "Installing https://github.com/fwartner/mac-cleanup"
  curl -o cleanup_mac https://raw.githubusercontent.com/fwartner/mac-cleanup/master/cleanup.sh
  chmod +x cleanup_mac
}

function install_dependencies() {
  install_cleanup
}

install_dependencies
