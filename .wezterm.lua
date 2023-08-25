local wezterm = require 'wezterm'
local gui = wezterm.gui
local config = {}
config.font_size = 13.0
config.hide_tab_bar_if_only_one_tab = true
-- config.window_decorations = "RESIZE"
config.window_padding = {
  left = 2,
  right = 2,
  top = 0,
  bottom = 0,
}

config.keys = {
  -- This will create a new split and run your default program inside it
  {
    key = '"',
    mods = 'CTRL|SHIFT',
    action = wezterm.action.SplitVertical { domain = 'CurrentPaneDomain' },
  },
  {
    key = '%',
    mods = 'CTRL|SHIFT',
    action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' },
  },
}
return config
