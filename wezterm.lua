-- 1. Enter the copy mode using ctrl+shift+x and using vim keybindings and `y` to copy

local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.colors = {
	foreground = "white",
	cursor_bg = "white",
	cursor_border = "#47FF9C",
	selection_bg = "#033259",
	selection_fg = "#CBE0F0",
}

config.font = wezterm.font("JetBrainsMono Nerd Font Propo")
config.font_size = 16

config.window_decorations = "RESIZE"
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
