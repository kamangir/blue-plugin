#! /usr/bin/env bash

function blue_plugin_action_git_before_push() {
    blue_plugin build_README

    [[ "$(abcli_git get_branch)" == "main" ]] &&
        blue_plugin pypi build

}
