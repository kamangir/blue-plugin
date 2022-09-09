#! /usr/bin/env bash

function blue_plugin_session() {
    local task=$(abcli_unpack_keyword $1 help)

    if [ "$task" == "start" ] ; then
        abcli_log "blue-plugin: session started."

        python3 -m blue_plugin.session.start ${@:3}

        abcli_log "blue-plugin: session ended."
        return
    fi

    abcli_log_error "-blue-plugin: session: $task: command not found."
}