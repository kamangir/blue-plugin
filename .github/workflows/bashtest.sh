#! /usr/bin/env bash

function bashtest() {
    # set -x # verbose-mode

    echo "GITHUB_COMMIT_MESSAGE: $GITHUB_COMMIT_MESSAGE"

    [[ "$GITHUB_COMMIT_MESSAGE" == *"no-workflow"* ]] &&
        return 0

    local plugin_name=$1

    cd ..
    git clone https://github.com/kamangir/awesome-bash-cli.git

    source $(pwd)/awesome-bash-cli/abcli/.abcli/abcli.sh ~terraform \
        $plugin_name test

    return
}

bashtest "$@"
