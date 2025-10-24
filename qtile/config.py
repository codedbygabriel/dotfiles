import os
import subprocess

from libqtile import layout
from libqtile.config import Click, Drag, Match
from libqtile.lazy import lazy
from libqtile import hook

from modules.keymaps import default_keymaps, apps_keymaps
from modules.defaulties import defaulties
from modules.groups import custom_groups, custom_keys
from modules.screen import _screen
from modules.layouts import _layouts


@hook.subscribe.startup_once
def autostart() -> None:
    file = os.path.expanduser('~/.config/qtile/autostart/init.sh')
    subprocess.call(file)


mod: str = defaulties.get("mod")
terminal: str = defaulties.get("terminal")

keys: list = []
groups: list = []
screens: list = []
layouts: list = []
widget_defaults: dict = dict()

keys.extend(default_keymaps)
keys.extend(apps_keymaps)
keys.extend(custom_keys)

groups.extend(custom_groups)
screens.extend(_screen)
layouts.extend(_layouts)

widget_defaults.update(defaulties.get("styles"))
extension_defaults = widget_defaults.copy()


# Drag floating layouts.
mouse = [
    Drag([mod], "Button1", lazy.window.set_position_floating(),
         start=lazy.window.get_position()),
    Drag([mod], "Button3", lazy.window.set_size_floating(),
         start=lazy.window.get_size()),
    Click([mod], "Button2", lazy.window.bring_to_front()),
]

dgroups_key_binder = None
dgroups_app_rules = []  # type: list
follow_mouse_focus = True
bring_front_click = False
floats_kept_above = True
cursor_warp = False
floating_layout = layout.Floating(
    float_rules=[
        *layout.Floating.default_float_rules,
        Match(wm_class="confirmreset"),  # gitk
        Match(wm_class="makebranch"),  # gitk
        Match(wm_class="maketag"),  # gitk
        Match(wm_class="ssh-askpass"),  # ssh-askpass
        Match(title="branchdialog"),  # gitk
        Match(title="pinentry"),  # GPG key password entry
    ]
)
auto_fullscreen = True
focus_on_window_activation = "smart"
focus_previous_on_window_remove = False
reconfigure_screens = True

# If things like steam games want to auto-minimize themselves when losing
# focus, should we respect this or not?
auto_minimize = True

# When using the Wayland backend, this can be used to configure input devices.
wl_input_rules = None

# xcursor theme (string or None) and size (integer) for Wayland backend
wl_xcursor_theme = None
wl_xcursor_size = 12

# XXX: Gasp! We're lying here. In fact, nobody really uses or cares about this
# string besides java UI toolkits; you can see several discussions on the
# mailing lists, GitHub issues, and other WM documentation that suggest setting
# this string if your java app doesn't work correctly. We may as well just lie
# and say that we're a working one by default.
#
# We choose LG3D to maximize irony: it is a 3D non-reparenting WM written in
# java that happens to be on java's whitelist.
wmname = "LG3D"
