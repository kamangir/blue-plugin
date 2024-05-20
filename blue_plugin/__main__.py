from blue_plugin import NAME, VERSION, DESCRIPTION, ICON
from blue_plugin.logger import logger
from gizai.argparse.version import main

success, message = main(NAME, VERSION, DESCRIPTION, ICON)
if not success:
    logger.error(message)
