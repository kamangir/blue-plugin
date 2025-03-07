import os

from blue_objects import file, README

from blue_plugin import NAME, VERSION, ICON, REPO_NAME


items = README.Items(
    [
        {
            "name": f"feature {index}",
            "marquee": "https://github.com/kamangir/assets/raw/main/blue-plugin/marquee.png?raw=true",
            "description": f"description of feature {index} ...",
            "url": "#",
        }
        for index in range(1, 4)
    ]
)


def build():
    return README.build(
        items=items,
        path=os.path.join(file.path(__file__), ".."),
        ICON=ICON,
        NAME=NAME,
        VERSION=VERSION,
        REPO_NAME=REPO_NAME,
    )
