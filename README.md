# blue-plugin

An [`awesome-bash-cli`](https://github.com/kamangir/awesome-bash-cli) (`abcli`) plugin is a mechanism to add to `abcli`. 

To build an `abcli` plugin you need python3 code that is executed through the command line. You may have some of this code already in a repo named `<plugin-name>`. Otherwise, [create the new repository `\<plugin-name\>` from template](https://github.com/kamangir/blue-plugin/generate). Then, type in,

```bash
abcli git clone <plugin-name> init[,~from_template]
```