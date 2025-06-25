local wezterm = require 'wezterm'
local config = wezterm.config_builder()

config.initial_cols = 120
config.initial_rows = 28

config.default_prog = { "powershell.exe", "-NoLogo" }

config.colors = {
	foreground = "white",
	cursor_bg = "white",
	cursor_border = "#47FF9C",
	selection_bg = "#033259",
	selection_fg = "#CBE0F0",
	ansi = { "#214969", "#E52E2E", "#44FFB1", "#FFE073", "#0FC5ED", "#a277ff", "#24EAF7", "#24EAF7" },
	brights = { "#214969", "#E52E2E", "#44FFB1", "#FFE073", "#A277FF", "#a277ff", "#24EAF7", "#24EAF7" },
}

config.default_cursor_style = "BlinkingBlock"
config.cursor_blink_rate = 500
config.font_size = 10.7
config.color_scheme = 'ayu'
config.window_decorations = "RESIZE"

config.window_frame = {
	font = wezterm.font({ family = "Roboto", weight = "Bold" }),
	font_size = 12.0,
}

config.colors = {
	tab_bar = {
		inactive_tab_edge = "#575757",
	},
}
-- Finally, return the configuration to wezterm:
return config
