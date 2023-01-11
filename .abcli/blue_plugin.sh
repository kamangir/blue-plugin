#! /usr/bin/env bash

function bp() {
    blue_plugin $@
}

function blue_plugin() {
    local task=$(abcli_unpack_keyword $1 help)

    if [ $task == "help" ] ; then
        # blue_plugin_task $@

        if [ "$(abcli_keyword_is $2 verbose)" == true ] ; then
            python3 -m blue_plugin --help
        fi
        return
    fi

    local function_name=blue_plugin_$task
    if [[ $(type -t $function_name) == "function" ]] ; then
        $function_name ${@:2}
        return
    fi

    if [ "$task" == "version" ] ; then
        abcli_log $(python3 -m blue_plugin version ${@:2})
        return
    fi

    abcli_log_error "-blue_plugin: $task: command not found."
}