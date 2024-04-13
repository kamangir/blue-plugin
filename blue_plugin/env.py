import os
from dotenv import load_dotenv

parent_dir = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))

load_dotenv(os.path.join(parent_dir, ".env"))
load_dotenv(os.path.join(parent_dir, "config.env"))


BLUE_PLUGIN_SECRET = os.getenv("BLUE_PLUGIN_SECRET", "")

BLUE_PLUGIN_CONFIG = os.getenv("BLUE_PLUGIN_CONFIG", "")
