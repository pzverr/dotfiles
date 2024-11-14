#!/bin/sh

source $HOME/.cargo/env

export GOROOT=/usr/local/go
export GOPATH=$HOME/.go
export GOBIN=$GOPATH/bin

export FZF_DEFAULT_OPTS=" \
--color=bg+:#1f2430,bg:#0A0E14,spinner:#F07178,hl:#EA6C73 \
--color=fg:#C7C7C7,header:#EA6C73,info:#91B362,pointer:#F07178 \
--color=marker:#F9AF4F,fg+:#C7C7C7,prompt:#91B362,hl+:#EA6C73 \
--color=selected-bg:#01060E \
--multi \
--layout reverse \
--inline-info \
--border
"

if [ -d "$HOME/adb-fastboot/platform-tools" ] ; then
    export PATH="$HOME/adb-fastboot/platform-tools:$PATH"
fi
