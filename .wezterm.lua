local wezterm = require("wezterm")
return {
	automatically_reload_config = true,
	-- font = wezterm.font({ family = "JetBrainsMonoNerdFont" }),
	font = wezterm.font({ family = "Iosevka NFM" }),
	font_size = 11.0,
	default_prog = { "C:\\Program Files\\Git\\bin\\bash.exe --login" },
	color_scheme = "Gruvbox dark, hard (base16)",
	enable_tab_bar = true,
	hide_tab_bar_if_only_one_tab = true,
}
