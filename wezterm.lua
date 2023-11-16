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
