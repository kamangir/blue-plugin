from setuptools import setup
import os

from blue_plugin import NAME, VERSION, DESCRIPTION

with open(os.path.join(os.path.dirname(__file__), "README.md")) as f:
    long_description = f.read().replace(
        "./",
        "https://github.com/kamangir/blue-plugin/raw/main/",
    )

with open(os.path.join(os.path.dirname(__file__), "requirements.txt")) as f:
    requirements = f.read().split("\n")


setup(
    name=NAME,
    author="arash@kamangir.net",
    author_email="arash@kamangir.net",
    version=VERSION,
    description=DESCRIPTION,
    long_description=long_description,
    long_description_content_type="text/markdown",
    url="https://github.com/kamangir/blue-plugin",
    packages=[NAME],
    package_data={
        NAME: ["config.env"],
    },
    install_requires=[],  # requirements,
    classifiers=[
        "Programming Language :: Python :: 3",
        "Programming Language :: Unix Shell",
        "License :: Public Domain",
        "Operating System :: OS Independent",
    ],
    entry_points={
        "console_scripts": [
            "blue-plugin=blue_plugin:main",  # Example entry point
        ],
    },
    license="Public Domain",
)
