import subprocess
import os
from libqtile.config import Key, Screen, Group, Drag, Click
from libqtile.command import lazy
from libqtile import layout, bar, widget, hook

WALLPAPER = "~/.config/qtile/wallpapers/wallpaper13.jpg"

terminal = "alacritty"
mod = "mod4"
fontfamily = "Caskaydia Cove Nerd Font Bold"

keys = [
    Key([mod], "w", lazy.window.kill()),
    Key([mod, "control"], "r", lazy.reload_config()),
    Key([mod, "control"], "q", lazy.shutdown()),
    Key([mod], "r", lazy.spawncmd()),
    # MonadTall Bindings
    Key([mod], "h", lazy.layout.left()),
    Key([mod], "l", lazy.layout.right()),
    Key([mod], "j", lazy.layout.down()),
    Key([mod], "k", lazy.layout.up()),
    Key([mod, "shift"], "h", lazy.layout.swap_left()),
    Key([mod, "shift"], "l", lazy.layout.swap_right()),
    Key([mod, "shift"], "j", lazy.layout.swap_down()),
    Key([mod, "shift"], "k", lazy.layout.swap_up()),
    Key([mod], "o", lazy.layout.maximize()),
    # Default apps
    Key([mod], "e", lazy.spawn("thunar")),
    Key([mod], "b", lazy.spawn("brave-browser")),
    Key([mod], "Return", lazy.spawn("alacritty")),
    # Control volume audio
    Key([], "F4", lazy.spawn("amixer -q -D pulse sset Master toggle")),
    Key([], "F3", lazy.spawn("amixer -q -D pulse sset Master 10%+")),
    Key([], "F2", lazy.spawn("amixer -q -D pulse sset Master 10%-")),
]

mouse = [
    Drag(
        [mod],
        "Button1",
        lazy.window.set_position_floating(),
        start=lazy.window.get_position(),
    ),
    Drag(
        [mod], "Button3", lazy.window.set_size_floating(), start=lazy.window.get_size()
    ),
    Click([mod], "Button2", lazy.window.bring_to_front()),
]

widget_defaults = dict(
    font=fontfamily,
    fontsize=12,
    padding=2,
)

groups = [
    Group(i)
    for i in [
        "1",
        "2",
        "3",
        "4",
        "5",
    ]
]

for i, group in enumerate(groups):
    actual_key = str(i + 1)
    keys.extend(
        [
            # Switch to workspace N
            Key([mod], actual_key, lazy.group[group.name].toscreen()),
            # Send window to workspace N
            Key([mod, "shift"], actual_key, lazy.window.togroup(group.name)),
        ]
    )

colorpalette_1 = "#3bcb8b"
colorpalette_2 = "#ffffff"
colorpalette_3 = "#0f101a"
colorpalette_4 = "#3b4252"

layouts = [
    layout.MonadTall(
        margin=6,
        border_normal=colorpalette_3,
        border_focus=colorpalette_4,
        border_width=1,
    ),
]


screens = [
    Screen(
        top=bar.Bar(
            [
                widget.GroupBox(
                    fontsize=12,
                    highlight_method="block",
                    rounded=False,
                    borderwidth=0,
                    padding_y=8,
                    padding_x=10,
                    active=colorpalette_2,
                    inactive=colorpalette_2,
                    this_current_screen_border=colorpalette_4,
                    disable_drag=True,
                ),
                widget.Prompt(),
                widget.Spacer(),
                widget.TextBox(
                    padding=5,
                ),
                widget.TextBox(
                    text="\ue0b2",
                    fontsize=31,
                    foreground=colorpalette_1,
                    background=colorpalette_3,
                    padding=0,
                ),
                widget.CPU(
                    format="CPU {freq_current}%",
                    background=colorpalette_1,
                    foreground=colorpalette_3,
                ),
                widget.TextBox(
                    text="\ue0b2",
                    fontsize=10,
                    foreground=colorpalette_1,
                    background=colorpalette_1,
                    padding=0,
                ),
                widget.TextBox(
                    text="\ue0b2",
                    fontsize=31,
                    foreground=colorpalette_3,
                    background=colorpalette_1,
                    padding=0,
                ),
                widget.TextBox(
                    padding=1,
                ),
                widget.Memory(
                    format="RAM {MemUsed:.0f}{mm}",
                ),
                widget.TextBox(
                    text="\ue0b2",
                    fontsize=20,
                    foreground=colorpalette_3,
                    background=colorpalette_3,
                    padding=0,
                ),
                widget.TextBox(
                    text="\ue0b2",
                    fontsize=31,
                    foreground=colorpalette_1,
                    background=colorpalette_3,
                    padding=0,
                ),
                widget.Clock(
                    format="%I:%M %p",
                    background=colorpalette_1,
                    foreground=colorpalette_3,
                ),
                widget.TextBox(
                    text=" ",
                    fontsize=14,
                    background=colorpalette_1,
                    padding=0,
                ),
                widget.TextBox(
                    text="\ue0b2",
                    fontsize=31,
                    foreground=colorpalette_3,
                    background=colorpalette_1,
                    padding=0,
                ),
                widget.Systray(
                    icon_size=17,
                    padding=4,
                ),
                widget.Volume(
                    emoji=True,
                    padding=9,
                ),
            ],
            28,
            background=colorpalette_3,
            opacity=1,
        ),
        wallpaper=WALLPAPER,
        wallpaper_mode="stretch",
    )
]


@hook.subscribe.startup
def autostart():
    home = os.path.expanduser("~/.config/qtile/autostart.sh")
    subprocess.call([home])
