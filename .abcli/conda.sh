#! /usr/bin/env bash

function blue_plugin_conda() {
    local task=$(abcli_unpack_keyword $1 help)

    if [ "$task" == "help" ]; then
        abcli_show_usage "blue_plugin conda create_env [validate]" \
            "create conda environmnt."
        abcli_show_usage "blue_plugin conda validate" \
            "validate conda environmnt."
        return
    fi

    if [ "$task" == "create_env" ]; then
        local options=$2
        local do_validate=$(abcli_option_int "$options" validate 0)

        abcli_conda create_env clone=base,name=blue_plugin

        pip3 install pymysql==0.10.1
        # pip3 install ...

        [[ "$do_validate" == 1 ]] && blue_plugin_conda validate

        return
    fi

    if [ "$task" == validate ]; then
        echo "wip"
        return
    fi

    abcli_log_error "-blue_plugin: conda: $task: command not found."
}
