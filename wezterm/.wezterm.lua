local wezterm = require 'wezterm'
local config = {}

config.window_decorations = "RESIZE"
config.color_scheme = 'rose-pine'
config.window_background_opacity = 0.85
-- config.window_background_opacity = 0.90
-- config.window_background_opacity = 0.95
-- config.window_background_opacity = 1
config.colors = {
    background = "black",
}
config.enable_tab_bar = false

config.font = wezterm.font 'Fira Code'
config.font_size = 24.0

return config
