from setuptools import setup

from blue_plugin import NAME, VERSION, DESCRIPTION

setup(
    name=NAME,
    author="arash@kamangir.net",
    version=VERSION,
    description=DESCRIPTION,
    packages=[NAME],
    package_data={
        NAME: ["config.env"],
    },
)
