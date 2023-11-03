#! /usr/bin/env bash

function blue_plugin_subtask() {
    local task=$(abcli_unpack_keyword $1 help)

    if [ "$task" == "help" ]; then
        local options="dryrun,upload"
        local args="[--<keyword> <value>]$ABCUL[--<keyword> <value>]"
        abcli_show_usage "blue_plugin subtask <task>$ABCUL[$options]$ABCUL<object-name>$ABCUL$args" \
            "<task> <object-name>."
        return
    fi

    if [ "$task" == "<task>" ]; then
        local options=$2
        local do_dryrun=$(abcli_option_int "$options" dryrun 0)
        local do_upload=$(abcli_option_int "$options" upload $(abcli_not $do_dryrun))

        local object_name=$(abcli_clarify_object $3 $(abcli_string_timestamp))

        abcli_eval dryrun=$do_dryrun \
            ls "${@:4}"

        [[ "$do_dryrun" == 1 ]] &&
            abcli_upload object $object_name

        return
    fi

    abcli_log_error "-blue_plugin: subtask: $task: command not found."
}
