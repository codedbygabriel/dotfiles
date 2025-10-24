from libqtile.config import Group, Key
from libqtile.lazy import lazy

from modules.defaulties import defaulties


custom_groups: list = [
    Group("🌍"),
    Group("💻"),
    Group("🎬"),
    Group("🎮"),
]

custom_keys: list = []

for index, item in enumerate(custom_groups):
    custom_keys.extend(
        [
            Key([defaulties.get("mod")], str(index + 1),
                lazy.group[item.name].toscreen()),
            Key([defaulties.get("mod"), "shift"], str(index + 1), lazy.window.togroup(item.name,
                                                                                      switch_group=True)),
        ]
    )
