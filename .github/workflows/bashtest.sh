#! /usr/bin/env bash

function bashtest() {
    # set -x # verbose-mode

    local plugin_name=$1

    echo "inside bashtest"
    pwd
    ls

    cd ..
    git clone https://github.com/kamangir/awesome-bash-cli.git

    source ./awesome-bash-cli/bash/abcli.sh ~terraform \
        $plugin_name test

    return
}

bashtest "$@"
