from libqtile import layout
from modules.defaulties import defaulties

_layouts = [
    layout.MonadTall(
        border_focus="#F2EDEB",
        border_width=2,
        single_margin=20,
        margin=10,
    ),
    layout.Floating(
        border_focus="#F2EDEB",
        border_width=0,
    )
]
