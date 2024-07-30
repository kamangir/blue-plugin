#! /usr/bin/env bash

function test_blue_plugin_generic() {
    local options=$1

    abcli_eval ,$options \
        blue_plugin build_README
}
