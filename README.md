# blue-plugin

## TL;DR

1️⃣ create a new repository from this template.

2️⃣

```bash
abcli git clone <plugin-name> cd
source transform.sh
```

3️⃣
```bash
abcli init clear
<plugin-name> help
```

---

An [`awesome-bash-cli`](https://github.com/kamangir/awesome-bash-cli) (`abcli`) plugin is a mechanism to run python and bash on Linux. Examples of `abcli` plugins are:

1. [blue-rvr](https://github.com/kamangir/blue-rvr): A rover that carries a camera, runs deep learning vision models through python and TensorFlow, and is cloud-connected.
1. [blue-sbc](https://github.com/kamangir/blue-sbc): python + bash bootstrap for single board computers: Raspberry Pi & Jetson Nano.
1. [browser](https://github.com/kamangir/browser): A browser for cloud objects with metadata.
1. [RAW Vancouver PORTAL 2022](https://github.com/kamangir/RAW-Vancouver-PORTAL-2022): A [digital art installation](https://rawartists.com/vancouver).
1. [more...](https://github.com/kamangir?tab=repositories)

To build an `abcli` plugin you need python3 code that is executed through the command line. You may have some of this code already in a repo named `<plugin-name>`. Otherwise, [create the new repository `\<plugin-name\>` from template](https://github.com/kamangir/blue-plugin/generate). Then, type in,

## SageMaker set-up

To use on [AWS SageMaker](https://aws.amazon.com/sagemaker/), generate the seed 🌱,

```bash
abcli git clone blue_plugin install
@seed sagemaker
```

Then change the environment to a `PyTorch 2` image, `Python3` kernel, `ml.g4dn.xlarge` instance, and "open image terminal". Then, type in `bash` and paste the seed 🌱. Then, run,

```bash
blue_plugin conda create_env validate
```

![image](./assets/sagemaker.jpg)