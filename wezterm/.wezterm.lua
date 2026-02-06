local wezterm = require 'wezterm'
local config = {}

-- COLORS
config.colors = {
    background = "black",
}
config.color_scheme = 'rose-pine'

-- APPEARANCE
config.enable_tab_bar = false
config.window_decorations = "RESIZE"
config.window_background_opacity = 0.80
config.macos_window_background_blur = 20
config.window_padding = {
    left = 0,
    right = 0,
    top = 0,
    bottom = 0,
}

-- FONT
config.font = wezterm.font 'Fira Code'
config.font_size = 18.0

config.keys = {
  {
    key = ']',
    mods = 'CMD|SHIFT',
    action = wezterm.action.ToggleAlwaysOnTop,
  },
}

return config
