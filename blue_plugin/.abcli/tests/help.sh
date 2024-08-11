#! /usr/bin/env bash

function test_blue_plugin_help() {
    local options=$1

    local module
    for module in \
        "blue_plugin" \
        "blue_plugin browse" \
        "blue_plugin leaf" \
        "blue_plugin node" \
        "blue_plugin node leaf"; do
        abcli_eval ,$options \
            $module help
        [[ $? -ne 0 ]] && return 1
    done

    return 0
}
