#! /usr/bin/env bash

function test_blue_plugin_help() {
    local options=$1

    local module
    for module in \
        "blue_plugin" \
        "blue_plugin browse" \
        "blue_plugin leaf" \
        "blue_plugin node" \
        "blue_plugin node leaf" \
        "blue_plugin task"; do
        abcli_eval ,$options \
            abcli_help $module
        [[ $? -ne 0 ]] && return 1

        abcli_hr
    done

    return 0
}
