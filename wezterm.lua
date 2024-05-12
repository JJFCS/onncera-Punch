local wezterm = require "wezterm" -- PULL IN THE WEZTERM API
local config  = {}                -- THIS TABLE HOLDS THE CONFIGURATION

-- aids in providing clearer error messages (config_builder)
if wezterm.config_builder then
	config = wezterm.config_builder()
end

-- This is where you actually apply your config choices.
-- changing the color scheme: (https://wezfurlong.org/wezterm/colorschemes/index.html), for example
-- config.color_scheme = 'Batman'

-- config.colors = {}
-- config.colors.background = '#111111'
config.color_scheme = 'Japanesque'
config.font         = wezterm.font_with_fallback {
	{ family = 'MartianMono Nerd Font', weight = 'Regular' },
	{ family = 'Iosevka Nerd Font',     weight = 'Medium'  },
	'nonicons',
}
config.font_size           =  9    -- can use fractional point sizes, such as 13.3

config.line_height         =  1    -- scales computed line height to adjust spacing between successive rows  of text
config.cell_width          =  1    -- scales computed cell width  to adjust spacing between successive cells of text

config.underline_thickness =  2    -- overrides the base thickness of underlines
config.underline_position  = -1    -- negative number to offset the baseline of the font

-- I do not like putting anything at the edge if I can help it
config.enable_scroll_bar = false
config.window_padding    = {
	left   = 0,
	right  = 0,
	top    = 0,
	bottom = 0,
}

config.use_fancy_tab_bar         = false
config.tab_bar_at_bottom         = true
config.scrollback_lines          = 5000
config.window_background_opacity = 0.9
config.freetype_load_target      = "HorizontalLcd"

-- and finally, return the configuration to wezterm
return config

