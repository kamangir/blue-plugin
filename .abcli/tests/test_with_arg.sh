#! /usr/bin/env bash

function test_blue_plugin_with_args() {
    local options=$1
    local do_dryrun=$(abcli_option_int "$options" dryrun 0)

    local arg=$(abcli_option "$options" arg value)
    if [[ -z "$arg" ]]; then
        abcli_log_error "unknown arg."
        return 1
    fi

    local test_options=$2

    abcli_log "blue_plugin: test: test_with_args: arg: $arg: $test_options: ${@:3}."
}

function test_blue_plugin_with_args_batch() {
    local arg
    for arg in this that; do
        test_blue_plugin_with_args \
            "arg=$arg,$1" \
            "${@:2}"
    done
}
