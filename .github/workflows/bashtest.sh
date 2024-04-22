#! /usr/bin/env bash

function runme() {
    # set -x # verbose-mode

    local plugin_name=$1

    cd ../../../
    git clone https://github.com/kamangir/awesome-bash-cli.git

    source ./awesome-bash-cli/bash/abcli.sh ~terraform \
        $plugin_name test

    return
}

runme "$@"
