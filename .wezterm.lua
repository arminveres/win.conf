local wezterm = require("wezterm")

-- Custom color
local scheme = wezterm.color.get_builtin_schemes()["Gruvbox dark, hard (base16)"]
scheme.background = "#000000"

return {
	font_size = 11.0,
	color_schemes = { ["MyGruvbox"] = scheme },
	color_scheme = "MyGruvbox",
	automatically_reload_config = true,
	window_background_opacity = 0.90,
	enable_tab_bar = true,
	hide_tab_bar_if_only_one_tab = true,
	-- NOTE: Windows specific configs
	default_prog = { "C:\\Program Files\\Git\\bin\\bash.exe --login" },
	font = wezterm.font({ family = "Iosevka NFM" }),
}
