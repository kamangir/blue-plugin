from abcli.env import Env, load_env, load_config

load_env(__name__)
load_config(__name__)


env = Env(
    [
        "BLUE_PLUGIN_SECRET",
        "BLUE_PLUGIN_CONFIG",
    ]
)
