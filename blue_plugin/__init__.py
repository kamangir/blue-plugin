from abcli import fullname as abcli_fullname

NAME = "blue_plugin"

ICON = "🌀"

DESCRIPTION = f"{ICON} a git template for an awesome-bash-cli plugin."

VERSION = "3.158.1"

REPO_NAME = "blue-plugin"

MARQUEE = "https://github.com/kamangir/assets/raw/main/blue-plugin/marquee.png?raw=true"


def fullname() -> str:
    return "{}-{}-{}".format(
        NAME,
        VERSION,
        abcli_fullname(),
    )
