local wezterm = require 'wezterm'
local config = wezterm.config_builder()

config.font_size = 16
config.hide_tab_bar_if_only_one_tab = true

config.initial_cols = 120
config.initial_rows = 28

config.font = wezterm.font("IBM Plex Mono", {weight="Medium", stretch="Normal", style="Normal"})

config.keys = 
{
	{
        key = 'F11',
		action = wezterm.action.ToggleFullScreen,
	},
}

return config
