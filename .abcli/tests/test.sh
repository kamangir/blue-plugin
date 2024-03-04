#! /usr/bin/env bash

function test_blue_plugin_test() {
    local options=$1
    local do_dryrun=$(abcli_option_int "$options" dryrun 0)

    local test_options=$2

    abcli_eval dryrun=$do_dryrun \
        "echo 📜 blue-plugin: test: test: $test_options: ${@:3}."
}
