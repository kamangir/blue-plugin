# 🌀 blue-plugin

🌀 `blue-plugin` is a template for a 🚀 [`awesome-bash-cli`](https://github.com/kamangir/awesome-bash-cli) (`abcli`) plugin, to build [things like these](https://github.com/kamangir?tab=repositories) that out-of-the-box support,

- a git repo with actions.
- [pytest](https://docs.pytest.org/).
- [pylint](https://pypi.org/project/pylint/).
- a python package.
- [pypi](https://pypi.org/).
- a bash interface.
- bash testing.

# installation

```bash
pip install blue-plugin
```

# creating a blue-plugin

create a new repository from this template. then replace `<plugin-name>` with the name of the plugin and run these commands,

```bash
@git clone <plugin-name> cd
source transform.sh

@init clear
<plugin-name> help
```

then move this section and update the rest of this document according to the plugin.

---

[![PyPI version](https://img.shields.io/pypi/v/blueness.svg)](https://pypi.org/project/blueness/)

To use on [AWS SageMaker](https://aws.amazon.com/sagemaker/) replace `<plugin-name>` with the name of the plugin and follow [these instructions](https://github.com/kamangir/blue-plugin/blob/main/SageMaker.md).
