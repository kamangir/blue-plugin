#! /usr/bin/env bash

function transform() {
    local plugin_name=$(basename $(pwd))

    abcli_log "blue_plugin -> $plugin_name"

    git mv blue_plugin $plugin_name
    git mv .abcli/blue_plugin.sh .abcli/$plugin_name.sh
    git mv .abcli/install/blue_plugin.sh .abcli/install/$plugin_name.sh
    rm -v .abcli/session.sh

    local filename
    for filename in \
        ./.abcli/install/$plugin_name.sh \
        ./.abcli/$plugin_name.sh \
        ./$plugin_name/__init__.py \
        ./setup.py; do

        python3 -m abcli.file replace \
            --filename $filename \
            --this blue_plugin \
            --that $plugin_name
    done

    echo "# $plugin_name" >README.md
}

transform "$@"
