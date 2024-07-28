import os
from blueness import module
import abcli
from abcli import file
from abcli.file.functions import build_from_template
from abcli.plugins import markdown
from blue_plugin import NAME, VERSION, ICON
from blue_plugin.logger import logger

NAME = module.name(__file__, NAME)


def build(filename: str = ""):
    if not filename:
        filename = os.path.join(file.path(__file__), "../README.md")

    logger.info(f"{NAME}.build: {filename}")

    url = "#"
    thumbnail = (
        "https://github.com/kamangir/assets/raw/main/blue-plugin/marquee.png?raw=true"
    )
    items = [
        "{}[`{}`]({}) [![image]({})]({}) {}".format(
            ICON,
            f"feature {index}",
            url,
            thumbnail,
            url,
            f"description of feature {index} ...",
        )
        for index in range(1, 4)
    ]

    table = markdown.generate_table(items)

    signature = [
        "---",
        "built by [`{}`]({}), based on [`{}-{}`]({}).".format(
            abcli.fullname(),
            "https://github.com/kamangir/awesome-bash-cli",
            NAME,
            VERSION,
            "https://github.com/kamangir/blue-plugin",
        ),
    ]

    return file.build_from_template(
        os.path.join(file.path(__file__), "./assets/README.md"),
        {
            "--table--": table,
            "--signature": signature,
        },
        filename,
    )
