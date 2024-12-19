local wezterm = require("wezterm")
local config = wezterm.config_builder()

-- Custom color
local scheme = wezterm.color.get_builtin_schemes()["Gruvbox dark, hard (base16)"]
scheme.background = "#000000"
config.color_schemes = { ["MyGruvbox"] = scheme }
config.color_scheme = "MyGruvbox"

config.font = wezterm.font_with_fallback({ "Terminess Nerd Font Propo", "Iosevka Nerd Font Mono" })
config.font_size = 12
config.default_prog = { "pwsh" }
config.window_decorations = "RESIZE"
config.hide_tab_bar_if_only_one_tab = true
config.keys = {
	{
		key = "F",
		mods = "CTRL|SHIFT",
		action = wezterm.action.Search({ CaseInSensitiveString = "" }),
	},
}


config.wsl_domains = {
	{
		name = "WSL:Ubuntu",
		distribution = "Ubuntu",
		default_prog = { "tmux" }
	}
}
config.default_domain = "WSL:Ubuntu"

return config
