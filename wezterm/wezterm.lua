local wezterm = require("wezterm")
local act = wezterm.action
local config = wezterm.config_builder()

-- PODSTAWOWY WYGLĄD
config.font_size = 18
config.line_height = 1.2
config.window_decorations = "RESIZE"
config.color_scheme = "tokyonight_night"

-- SKRÓTY KLAWISZOWE
config.keys = {
  -- Zamykanie panelu
  {
    key = "w",
    mods = "CMD",
    action = act.CloseCurrentPane { confirm = false },
  },

  -- Splitowanie paneli (Pionowe CMD+d / Poziome CMD+SHIFT+d)
  {
    key = "d",
    mods = "CMD",
    action = act.SplitHorizontal { domain = "CurrentPaneDomain" },
  },
  {
    key = "D", -- Duże D dla SHIFT
    mods = "CMD|SHIFT",
    action = act.SplitVertical { domain = "CurrentPaneDomain" },
  },

  -- ZMIANA FOCUSU (CMD + hjkl)
  { key = 'h', mods = 'CMD', action = act.ActivatePaneDirection 'Left' },
  { key = 'l', mods = 'CMD', action = act.ActivatePaneDirection 'Right' },
  { key = 'k', mods = 'CMD', action = act.ActivatePaneDirection 'Up' },
  { key = 'j', mods = 'CMD', action = act.ActivatePaneDirection 'Down' },

  -- ZMIANA ROZMIARU (CMD + SHIFT + HJKL)
  -- Używamy wielkich liter, bo SHIFT jest aktywny
  { key = 'H', mods = 'CMD|SHIFT', action = act.AdjustPaneSize { 'Left', 5 } },
  { key = 'L', mods = 'CMD|SHIFT', action = act.AdjustPaneSize { 'Right', 5 } },
  { key = 'K', mods = 'CMD|SHIFT', action = act.AdjustPaneSize { 'Up', 5 } },
  { key = 'J', mods = 'CMD|SHIFT', action = act.AdjustPaneSize { 'Down', 5 } },

  -- CMD+a -> Początek linii (wysyła Ctrl+A)
  { key = 'a', mods = 'CMD', action = act.SendKey { key = 'a', mods = 'CTRL' } },
  
  -- CMD+e -> Koniec linii (wysyła Ctrl+E)
  { key = 'e', mods = 'CMD', action = act.SendKey { key = 'e', mods = 'CTRL' } },

  -- CMD+Backspace -> Usuń całe słowo (wysyła Ctrl+W)
  { key = 'Backspace', mods = 'CMD', action = act.SendKey { key = 'w', mods = 'CTRL' } },

  -- CMD+Strzałka w lewo -> Skok o słowo w tył (wysyła Alt+B)
  { key = 'LeftArrow', mods = 'CMD', action = act.SendKey { key = 'b', mods = 'ALT' } },

  -- CMD+Strzałka w prawo -> Skok o słowo w przód (wysyła Alt+F)
  { key = 'RightArrow', mods = 'CMD', action = act.SendKey { key = 'f', mods = 'ALT' } },
}

return config
