-- 1. Enter the copy mode using ctrl+shift+x and using vim keybindings and `y` to copy

local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices
config.colors = {
	foreground = "white",
	cursor_bg = "white",
	cursor_border = "#47FF9C",
	selection_bg = "#033259",
	selection_fg = "#CBE0F0",
	-- ansi = { "#214969", "#E52E2E", "#44FFB1", "#FFE073", "#0FC5ED", "#a277ff", "#24EAF7", "#24EAF7" },
	-- brights = { "#214969", "#E52E2E", "#44FFB1", "#FFE073", "#A277FF", "#a277ff", "#24EAF7", "#24EAF7" },
}
config.font = wezterm.font("JetBrainsMono Nerd Font Propo")
config.font_size = 16

-- config.window_background_image = "/path/to/wallpaper.jpg"
config.window_decorations = "RESIZE"
config.window_background_opacity = 0.25
config.macos_window_background_blur = 30
config.window_frame = {
	font = wezterm.font({ family = "Roboto", weight = "Bold" }),
	font_size = 14.0,
}

config.colors = {
	tab_bar = {
		inactive_tab_edge = "#575757",
	},
}
-- and finally, return the configuration to wezterm
return config
