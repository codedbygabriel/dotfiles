from libqtile.config import Click, Drag, Group, Key, Match, Screen
from libqtile import bar, widget

_screen = [
    Screen(
        bottom=bar.Bar(
            [
                widget.CurrentLayout(),
                widget.GroupBox(highlight_method="line", highlight_color=["111111",
                                                                          "f2f2f2"]),
                widget.Prompt(),
                widget.WindowName(),
                widget.Systray(),
                widget.PulseVolume(),
                widget.KeyboardLayout(configured_keyboards=["br"]),
                widget.Battery(),
                widget.Clock(format="%Y-%m-%d %a %I:%M %p"),
                widget.QuickExit(),
            ],
            24,
        ),
        background="#f2f2f2",
    ),
    Screen(
        bottom=bar.Bar(
            [
                widget.CurrentLayout(),
                widget.GroupBox(highlight_method="line", highlight_color=["111111",
                                                                          "f2f2f2"]),
                widget.Prompt(),
                widget.WindowName(),
                widget.Systray(),
                widget.PulseVolume(),
                widget.KeyboardLayout(configured_keyboards=["br"]),
                widget.Battery(),
                widget.Clock(format="%Y-%m-%d %a %I:%M %p"),
                widget.QuickExit(),
            ],
            24,
        ),
        background="#f2f2f2",
    ),

]
