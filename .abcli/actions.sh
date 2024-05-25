#! /usr/bin/env bash

function blue_plugin_action_git_before_push() {
    blue_plugin pypi build
}
