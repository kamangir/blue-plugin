import os
from abcli import file
from abcli.plugins.README import build as build_README
from blue_plugin import NAME, VERSION, ICON, REPO_NAME


items = [
    "{}[`{}`](#) [![image]({})](#) {}".format(
        ICON,
        f"feature {index}",
        "https://github.com/kamangir/assets/raw/main/blue-plugin/marquee.png?raw=true",
        f"description of feature {index} ...",
    )
    for index in range(1, 4)
]


def build():
    return build_README(
        items=items,
        path=os.path.join(file.path(__file__), ".."),
        ICON=ICON,
        NAME=NAME,
        VERSION=VERSION,
        REPO_NAME=REPO_NAME,
    )
