#! /usr/bin/env bash

function bp() {
    blue_plugin "$@"
}

function blue_plugin() {
    local task=$(abcli_unpack_keyword $1 help)

    if [ $task == "help" ]; then
        blue_plugin_leaf "$@"
        blue_plugin_node "$@"

        abcli_show_usage "blue_plugin task [<thing_1+thing_2>|all]" \
            "task things."

        $(abcli_keyword_is $2 verbose) &&
            python3 -m blue_plugin --help

        return 0
    fi

    local function_name=blue_plugin_$task
    if [[ $(type -t $function_name) == "function" ]]; then
        $function_name "${@:2}"
        return
    fi

    if [ "$task" == "init" ]; then
        abcli_init blue_plugin "${@:2}"

        [[ $(abcli_conda exists blue_plugin) == 1 ]] &&
            conda activate blue_plugin
        return
    fi

    if [[ "|pylint|pytest|test|" == *"|$task|"* ]]; then
        abcli_${task} plugin=blue_plugin,$2 \
            "${@:3}"
        return
    fi

    if [[ "|pypi|" == *"|$task|"* ]]; then
        abcli_${task} "$2" \
            plugin=blue_plugin,$3 \
            "${@:4}"
        return
    fi

    if [ "$task" == "task" ]; then
        python3 -m blue_plugin \
            task \
            --what $(abcli_clarify_input $2 all) \
            "${@:3}"
        return
    fi

    python3 -m blue_plugin "$@"
}

abcli_source_path \
    $abcli_path_git/blue-plugin/.abcli/tests

abcli_env dot load \
    plugin=blue_plugin
abcli_env dot load \
    filename=blue_plugin/config.env,plugin=blue_plugin

abcli_log $(blue_plugin version --show_icon 1)
