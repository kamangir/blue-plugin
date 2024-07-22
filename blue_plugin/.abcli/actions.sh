#! /usr/bin/env bash

function blue_plugin_action_git_before_push() {
    if [[ "$(abcli_git get_branch)" == "main" ]]; then
        blue_plugin build_README
        blue_plugin pypi build
    fi
}
