# blue-plugin

## What?

An [`awesome-bash-cli`](https://github.com/kamangir/awesome-bash-cli) (`abcli`) plugin is a mechanism to build a bash cli for python code. Here are examples of `abcli` plugins:

1. [blue-rvr](https://github.com/kamangir/blue-rvr): A low-cost rover that carries a camera, runs deep learning vision models through python and TensorFlow, and is cloud-connected.
1. [blue-sbc](https://github.com/kamangir/blue-sbc): python + bash bootstrap for single board computers: Raspberry Pi & Jetson Nano.
1. [browser](https://github.com/kamangir/browser): A browser for cloud objects with metadata.
1. [RAW Vancouver PORTAL 2022](https://github.com/kamangir/RAW-Vancouver-PORTAL-2022): A [digital art installation](https://rawartists.com/vancouver).

<!---
## If you already have a repo

To build an `abcli` plugin you need code that is executed through the command line. This code should exist in a repo, i.e. `<plugin-name>`. Now, follow these steps:

1. Make sure that you have an up-to-date copy of `abcli` running on a dev machine.
1. Checkout the repo `<plugin-name>`.
1. Run `abcli plugin make <plugin-name>`.
1. Run `abcli init` and validate that `<plugin-name>` is loaded.
1. Commit and push the changes to the repo `<plugin-name>` and start developing... 🚀 
--->

## How?

1. [Create a new repository from `blue-plugin`](https://github.com/kamangir/blue-plugin/generate)...
1. 🚧 

## Advanced

1. Update [`keywords.py`](https://github.com/kamangir/awesome-bash-cli/blob/main/abcli/keywords/keywords.py).
1. Remove the file [`no-browser`](./no-browser) in the plugin repo and develop the [browser views](https://github.com/kamangir/browser).