# SageMaker terraform

To use on [AWS SageMaker](https://aws.amazon.com/sagemaker/), replace `<plugin-name>` with the name of the plugin and follow these steps. First, generate the seed 🌱,

```bash
@seed sagemaker-system plugin=<plugin-name>,screen
```

Then, change the environment to a `PyTorch 2` image, `Python3` kernel, `ml.g4dn.xlarge` instance, open the "System terminal", evaluate the machine, and decide which parts of the seeds to use. Then generate the seed 🌱,

```bash
@seed sagemaker plugin=<plugin-name>, screen
```
and "open image terminal", and paste the seed 🌱. 

![image](./assets/sagemaker.jpg)