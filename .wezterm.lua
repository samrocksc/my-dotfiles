local wezterm = require 'wezterm'
local gui = wezterm.gui
local config = {}
config.font =
  wezterm.font('JetBrains Mono', { weight = 'Bold', italic = false })
-- config.font = wezterm.font("BlexMono Nerd Font Mono")
-- config.font = wezterm.font("FuraMono Nerd Font")
-- config.font = wezterm.font("Hack Nerd Font")
-- config.font = wezterm.font("Hack Nerd Font Mono")
config.font_size = 15.0
config.hide_tab_bar_if_only_one_tab = true
-- config.window_decorations = "none"
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
