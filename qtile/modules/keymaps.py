from libqtile.config import Key, KeyChord
from libqtile.lazy import lazy
from modules.defaulties import defaulties

apps_keymaps = [
    Key([defaulties.get("mod")], "b", lazy.spawn(defaulties.get("browser")),
        desc="Launch Browser"),

    Key([defaulties.get("mod")], "r",
        lazy.spawn(f"{defaulties.get("app-launcher")} -show drun"),
        desc="app-launcher"),

    Key([defaulties.get("mod")], "Return", lazy.spawn(
        defaulties.get("terminal")), desc="Launch terminal"),

    Key([defaulties.get("mod")], "v",
        lazy.spawn(defaulties.get("volume-control").get("app"))),

    Key([defaulties.get("mod")], "n", lazy.spawn(
        defaulties.get("volume-control").get("minus"))),
    Key([defaulties.get("mod")], "m", lazy.spawn(
        defaulties.get("volume-control").get("plus"))),

    Key([defaulties.get("mod")], "s", lazy.spawn(
        "scrot ~/screenshots/%b%d::%H%M%S.png", shell=True), desc="print"),

]

default_keymaps = [
    Key([defaulties.get("mod")], "h",
        lazy.layout.left(), desc="Move focus to left"),
    Key([defaulties.get("mod")], "l",
        lazy.layout.right(), desc="Move focus to right"),
    Key([defaulties.get("mod")], "j", lazy.layout.down(), desc="Move focus down"),
    Key([defaulties.get("mod")], "k", lazy.layout.up(), desc="Move focus up"),
    Key([defaulties.get("mod")], "space", lazy.layout.next(),
        desc="Move window focus to other window"),

    Key([defaulties.get("mod"), "shift"], "h",
        lazy.layout.shuffle_left(), desc="Move window to the left"),
    Key([defaulties.get("mod"), "shift"], "l",
        lazy.layout.shuffle_right(), desc="Move window to the right"),
    Key([defaulties.get("mod"), "shift"], "j",
        lazy.layout.shuffle_down(), desc="Move window down"),
    Key([defaulties.get("mod"), "shift"], "k",
        lazy.layout.shuffle_up(), desc="Move window up"),

    Key([defaulties.get("mod"), "control"], "h",
        lazy.layout.grow_left(), desc="Grow window to the left"),
    Key([defaulties.get("mod"), "control"], "l",
        lazy.layout.grow_right(), desc="Grow window to the right"),
    Key([defaulties.get("mod"), "control"], "j",
        lazy.layout.grow_down(), desc="Grow window down"),
    Key([defaulties.get("mod"), "control"], "k",
        lazy.layout.grow_up(), desc="Grow window up"),
    Key([defaulties.get("mod")], "n", lazy.layout.normalize(),
        desc="Reset all window sizes"),

    Key(
        [defaulties.get("mod"), "shift"],
        "Return",
        lazy.layout.toggle_split(),
        desc="Toggle between split and unsplit sides of stack",
    ),
    # Toggle between different layouts as defined below
    Key([defaulties.get("mod")], "Tab",
        lazy.next_layout(), desc="Toggle between layouts"),
    Key([defaulties.get("mod")], "w",
        lazy.window.kill(), desc="Kill focused window"),
    Key(
        [defaulties.get("mod")],
        "f",
        lazy.window.toggle_fullscreen(),
        desc="Toggle fullscreen on the focused window",
    ),
    Key([defaulties.get("mod")], "t", lazy.window.toggle_floating(),
        desc="Toggle floating on the focused window"),
    Key([defaulties.get("mod"), "control"], "r",
        lazy.reload_config(), desc="Reload the config"),
    Key([defaulties.get("mod"), "control"], "q",
        lazy.shutdown(), desc="Shutdown Qtile"),
    Key([defaulties.get("mod")], "r", lazy.spawncmd(),
        desc="Spawn a command using a prompt widget"),
]
