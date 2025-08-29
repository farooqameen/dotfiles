local wezterm = require 'wezterm'
local config = wezterm.config_builder()

config.font_size = 14
config.hide_tab_bar_if_only_one_tab = true

config.keys = 
{
	{
        key = 'F11',
		action = wezterm.action.ToggleFullScreen,
	},
}

return config
