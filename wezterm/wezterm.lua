local wezterm = require("wezterm")
local act = wezterm.action
local config = wezterm.config_builder()

config.font_size = 18
config.line_height = 1.2
config.window_decorations = "RESIZE"
config.window_background_opacity = 0.9
config.color_scheme = "Catppuccin Mocha"

config.keys = {
	{
		key = "w",
		mods = "CMD",
		action = act.CloseCurrentPane({ confirm = false }),
	},
	{
		key = "d",
		mods = "CMD",
		action = act.SplitHorizontal({ domain = "CurrentPaneDomain" }),
	},
	{
		key = "D",
		mods = "CMD|SHIFT",
		action = act.SplitVertical({ domain = "CurrentPaneDomain" }),
	},
	{ key = "h", mods = "CMD", action = act.ActivatePaneDirection("Left") },
	{ key = "l", mods = "CMD", action = act.ActivatePaneDirection("Right") },
	{ key = "k", mods = "CMD", action = act.ActivatePaneDirection("Up") },
	{ key = "j", mods = "CMD", action = act.ActivatePaneDirection("Down") },
	{ key = "H", mods = "CMD|SHIFT", action = act.AdjustPaneSize({ "Left", 5 }) },
	{ key = "L", mods = "CMD|SHIFT", action = act.AdjustPaneSize({ "Right", 5 }) },
	{ key = "K", mods = "CMD|SHIFT", action = act.AdjustPaneSize({ "Up", 5 }) },
	{ key = "J", mods = "CMD|SHIFT", action = act.AdjustPaneSize({ "Down", 5 }) },
	{ key = "a", mods = "CMD", action = act.SendKey({ key = "a", mods = "CTRL" }) },
	{ key = "e", mods = "CMD", action = act.SendKey({ key = "e", mods = "CTRL" }) },
	{ key = "Backspace", mods = "CMD", action = act.SendKey({ key = "w", mods = "CTRL" }) },
	{ key = "LeftArrow", mods = "CMD", action = act.SendKey({ key = "b", mods = "ALT" }) },
	{ key = "RightArrow", mods = "CMD", action = act.SendKey({ key = "f", mods = "ALT" }) },
	{ key = "Tab", mods = "SHIFT", action = act.SendKey({ key = "Tab", mods = "SHIFT" }) },
}

return config
