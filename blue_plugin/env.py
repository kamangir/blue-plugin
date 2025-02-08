import os
from blue_options.env import load_config, load_env, get_env

load_env(__name__)
load_config(__name__)


BLUE_PLUGIN_SECRET = get_env("BLUE_PLUGIN_SECRET")

BLUE_PLUGIN_CONFIG = get_env("BLUE_PLUGIN_CONFIG")
