#! /usr/bin/env bash

abcli_source_path - caller,suffix=/tests

if [[ "$abcli_is_docker" == true ]]; then
    abcli_ssm get plugin=blue_plugin
else
    abcli_env dot load plugin=blue_plugin
fi

abcli_env dot load \
    filename=blue_plugin/config.env,plugin=blue_plugin
