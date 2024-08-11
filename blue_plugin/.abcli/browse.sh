#! /usr/bin/env bash

function blue_plugin_browse() {
    local options=$1

    if [ $(abcli_option_int "$options" help 0) == 1 ]; then
        options="actions|repo"
        abcli_show_usage "blue_plugin browse$ABCUL[$options]" \
            "browse blue_plugin."
        return
    fi

    local what=$(abcli_option_choice "$options" actions,repo repo)

    local url="https://github.com/kamangir/blue-plugin"
    [[ "$what" == "actions" ]] &&
        url="$url/actions"

    abcli_browse $url
}
