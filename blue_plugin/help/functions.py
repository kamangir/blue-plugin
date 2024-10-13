from typing import List

from blue_options.terminal import show_usage, xtra


def help_browse(
    tokens: List[str],
    mono: bool,
) -> str:
    options = "actions|repo"

    return show_usage(
        [
            "blue_plugin",
            "browse",
            f"[{options}]",
        ],
        "browse blue_plugin.",
        mono=mono,
    )


def help_node(
    tokens: List[str],
    mono: bool,
) -> str:
    options = xtra("dryrun", mono=mono)

    return show_usage(
        [
            "blue_plugin",
            "node",
            f"[{options}]",
            "[.|<object-name>]",
        ],
        "blue-plugin node <object-name>.",
        mono=mono,
    )


def help_node_leaf(
    tokens: List[str],
    mono: bool,
) -> str:
    options = xtra("~download,dryrun,~upload", mono=mono)
    args = [
        "[--<keyword-1> <value-1>]",
        "[--<keyword-2> <value-2>]",
    ]

    return show_usage(
        [
            "blue_plugin",
            "node",
            "leaf",
            f"[{options}]",
            "[.|<object-name-1>]",
            "[-|<object-name-2>]",
        ]
        + args,
        "<object-name-1> -blue-plugin node leaf-> <object-name-2>.",
        mono=mono,
    )


def help_leaf(
    tokens: List[str],
    mono: bool,
) -> str:
    options = "dryrun,upload"
    args = [
        "[--<keyword-1> <value-1>]",
        "[--<keyword-2> <value-2>]",
    ]

    return show_usage(
        [
            "blue_plugin",
            "leaf",
            f"[{options}]",
            "[.|<object-name>]",
        ]
        + args,
        "blue-plugin leaf <object-name>.",
        mono=mono,
    )


def help_task(
    tokens: List[str],
    mono: bool,
) -> str:
    options = "".join(
        [
            xtra("dryrun,", mono=mono),
            "<thing-1+thing-2>|all",
        ]
    )

    return show_usage(
        [
            "blue_plugin",
            "task",
            f"[{options}]",
            "[.|<object-name>]",
        ],
        "task -things-> <object-name>.",
        mono=mono,
    )


help_functions = {
    "browse": help_browse,
    "leaf": help_leaf,
    "node": {
        "": help_node,
        "leaf": help_node_leaf,
    },
    "task": help_task,
}
