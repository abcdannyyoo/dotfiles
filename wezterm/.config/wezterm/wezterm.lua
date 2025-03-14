-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

config.font = wezterm.font("MesLoLGS Nerd Font Mono")
config.font_size = 19

config.enable_tab_bar = false

config.window_decorations = "RESIZE"

config.colors = {
	foreground = "#D9DDE7",
	background = "#272727",
	cursor_bg = "#47FF9C",
	cursor_border = "#47FF9C",
	cursor_fg = "#011423",
	selection_bg = "#033259",
	selection_fg = "#CBE0F0",
	ansi = { "#4D5568", "#B2666B", "#A8BD90", "#D2BB84", "#6580A8", "#AE8FAB", "#93BECD", "#ACB1BD" },
	brights = { "#4D5568", "#B2666B", "#A8BD90", "#D2BB84", "#6580A8", "#AE8FAB", "#93BECD", "#ACB1BD" },
}

config.window_background_opacity = 0.9
config.macos_window_background_blur = 10

return config
