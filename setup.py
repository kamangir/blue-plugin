from blue_plugin import NAME, VERSION, DESCRIPTION
from blueness.pypi import setup


setup(
    filename=__file__,
    name=NAME,
    version=VERSION,
    description=DESCRIPTION,
    packages=[NAME],
    package_data={
        NAME: ["config.env"],
    },
)
