#! /usr/bin/env bash

function test_blue_plugin_thing_with_args() {
    local arg
    for arg in this that; do
        internal_test_blue_plugin_thing_with_args \
            "arg=$arg,$1" \
            "${@:2}"
    done
}

function internal_test_blue_plugin_thing_with_args() {
    local options=$1
    local do_dryrun=$(abcli_option_int "$options" dryrun 0)

    local arg=$(abcli_option "$options" arg value)

    local test_options=$2

    abcli_log "blue_plugin: test: thing_with_args: arg: $arg: $test_options: ${@:3}."
}
