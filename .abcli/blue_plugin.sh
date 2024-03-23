#! /usr/bin/env bash

function bp() {
    blue_plugin "$@"
}

function blue_plugin() {
    local task=$(abcli_unpack_keyword $1 help)

    if [ $task == "help" ]; then
        blue_plugin_conda "$@"

        blue_plugin_subtask_leaf "$@"
        blue_plugin_subtask_node "$@"

        local task
        for task in pylint pytest test; do
            blue_plugin $task "$@"
        done

        abcli_show_usage "blue_plugin task [<thing_1+thing_2>|all]" \
            "task things."

        if [ "$(abcli_keyword_is $2 verbose)" == true ]; then
            python3 -m blue_plugin --help
        fi
        return
    fi

    local function_name=blue_plugin_$task
    if [[ $(type -t $function_name) == "function" ]]; then
        $function_name "${@:2}"
        return
    fi

    if [ "$task" == "init" ]; then
        abcli_init blue_plugin "${@:2}"
        conda activate blue_plugin
        return
    fi

    if [[ "|pylint|pytest|test|" == *"|$task|"* ]]; then
        abcli_${task} plugin=blue_plugin,$2 \
            "${@:3}"
        return
    fi

    if [ "$task" == "task" ]; then
        python3 -m blue_plugin \
            task \
            --what $(abcli_clarify_input $2 all) \
            "${@:3}"
        return
    fi

    if [ "$task" == "version" ]; then
        python3 -m blue_plugin version "${@:2}"
        return
    fi

    python3 -m blue_plugin \
        "$task" \
        "${@:2}"
}

abcli_source_path \
    $abcli_path_git/blue-plugin/.abcli/tests

abcli_env dot load \
    plugin=blue_plugin
abcli_env dot load \
    filename=config.env,plugin=blue_plugin
