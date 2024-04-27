from abcli.tests import test_env
from blue_plugin.env import env


def test_abcli_env():
    test_env.test_abcli_env()


def test_blue_plugin_env():
    for var in env.vars:
        assert getattr(env, var), var
