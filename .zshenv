#!/bin/sh

source $HOME/.cargo/env

export GOROOT=/usr/local/go
export GOPATH=$HOME/.go
export GOBIN=$GOPATH/bin

export FZF_DEFAULT_OPTS='--layout reverse --inline-info --border'

if [ -d "$HOME/adb-fastboot/platform-tools" ] ; then
    export PATH="$HOME/adb-fastboot/platform-tools:$PATH"
fi
