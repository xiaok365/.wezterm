local wezterm = require("wezterm")
local config = {}

if wezterm.config_builder then
  config = wezterm.config_builder()
end

config.color_scheme = "Solarized (dark) (terminal.sexy)"

config.font = wezterm.font("Hack Nerd Font", { weight = "Regular" })
config.font_size = 15

config.window_background_opacity = 0.9
config.macos_window_background_blur = 15
config.line_height = 1.2

config.disable_default_key_bindings = true

config.use_fancy_tab_bar = false
config.colors = {
  tab_bar = {
    background = "#0b0022",
    active_tab = {
      bg_color = "#2b2042",
      fg_color = "#c0c0c0",
      intensity = "Normal",
      underline = "Single",
      italic = false,
      strikethrough = false,
    },
    inactive_tab = {
      bg_color = "#1b1032",
      fg_color = "#808080",
    },
    inactive_tab_hover = {
      bg_color = "#3b3052",
      fg_color = "#909090",
      italic = true,
    },
    new_tab = {
      bg_color = "#1b1032",
      fg_color = "#808080",
    },
    new_tab_hover = {
      bg_color = "#3b3052",
      fg_color = "#909090",
      italic = true,
    },
  },
}
config.window_padding = {
  left = 2,
  right = 2,
  top = 0,
  bottom = 0,
}

local act = wezterm.action
config.keys = {
  { key = "w", mods = "CMD", action = act.CloseCurrentTab({ confirm = true }) },
  { key = "h", mods = "CMD", action = act.ActivateTabRelative(-1) },
  { key = "l", mods = "CMD", action = act.ActivateTabRelative(1) },
  { key = "c", mods = "CMD", action = act.CopyTo("Clipboard") },
  { key = "v", mods = "CMD", action = act.PasteFrom("Clipboard") },
  { key = "t", mods = "CMD", action = act.SpawnTab("CurrentPaneDomain") },
  { key = "w", mods = "CMD", action = act.CloseCurrentTab({ confirm = true }) },
  { key = "d", mods = "CMD", action = act.HideApplication },
  { key = "f", mods = "CMD", action = act.Search({ CaseInSensitiveString = "" }) },
}
return config
