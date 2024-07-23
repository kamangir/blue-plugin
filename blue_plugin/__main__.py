from blue_plugin import NAME, VERSION, DESCRIPTION, ICON
from blue_plugin.logger import logger
from blue_plugin import README
from blueness.argparse.generic import main

success, message = main(
    __file__,
    NAME,
    VERSION,
    DESCRIPTION,
    ICON,
    {
        "build_README": lambda _: README.build(),
    },
)
if not success:
    logger.error(message)
