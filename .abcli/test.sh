#! /usr/bin/env bash

function blue_plugin_test() {
    local options=$1

    if [ $(abcli_option_int "$options" help 0) == 1 ]; then
        abcli_show_usage "blue_plugin test$ABCUL[dryrun,~this,~that]" \
            "test blue_plugin."
        return
    fi

    local do_dryrun=$(abcli_option_int "$options" dryrun 0)
    local test_this=$(abcli_option_int "$options" this 1)
    local test_that=$(abcli_option_int "$options" that 1)

    if [ "$test_this" == 1 ]; then
        abcli_eval dryrun=$do_dryrun \
            echo testing this ...
    fi

    if [ "$test_that" == 1 ]; then
        abcli_eval dryrun=$do_dryrun \
            echo testing that ...
    fi
}
