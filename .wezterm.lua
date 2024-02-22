local wezterm = require 'wezterm'
local act = wezterm.action
local config = {}

config.default_prog = {'nu'}
config.disable_default_key_bindings = true
config.adjust_window_size_when_changing_font_size = false
config.keys = {
  {
    key = 'r',
    mods = 'CTRL',
    action = act.ResetTerminal,
  },
  {
    key = 'q',
    mods = 'CTRL',
    action = act.QuitApplication,
  },
  {
    key = 'p',
    mods = 'CTRL',
    action = act.ActivateCommandPalette,
  },
  {
    key = 'c',
    mods = 'CTRL',
    action = act.CopyTo 'ClipboardAndPrimarySelection',
  },
  {
    key = 'v',
    mods = 'CTRL',
    action = act.PasteFrom 'Clipboard',
  },
  {
    key = 't',
    mods = 'CTRL',
    action = act.SpawnTab 'CurrentPaneDomain',
  },
  {
    key = 'W',
    mods = 'CTRL',
    action = act.CloseCurrentTab { confirm = true },
  },
  {
    key = '[',
    mods = 'CTRL',
    action = act.ActivateTabRelative(-1),
  },
  {
    key = ']',
    mods = 'CTRL',
    action = act.ActivateTabRelative(1),
  },
  {
    key = 'H',
    mods = 'CTRL',
    action = act.SplitPane { direction = 'Left' },
  }, 
  {
    key = 'J',
    mods = 'CTRL',
    action = act.SplitPane { direction = 'Down' },
  }, 
  {
    key = 'K',
    mods = 'CTRL',
    action = act.SplitPane { direction = 'Up' },
  },
  {
    key = 'L',
    mods = 'CTRL',
    action = act.SplitPane { direction = 'Right' },
  },
  {
    key = 'w',
    mods = 'CTRL',
    action = act.CloseCurrentPane { confirm = true },
  },
  {
    key = 'h',
    mods = 'CTRL',
    action = act.ActivatePaneDirection 'Left',
  },
  {
    key = 'j',
    mods = 'CTRL',
    action = act.ActivatePaneDirection 'Down',
  },
  {
    key = 'k',
    mods = 'CTRL',
    action = act.ActivatePaneDirection 'Up',
  },
  {
    key = 'l',
    mods = 'CTRL',
    action = act.ActivatePaneDirection 'Right',
  },
  {
    key = '=',
    mods = 'CTRL',
    action = act.IncreaseFontSize,
  },
  {
    key = '-',
    mods = 'CTRL',
    action = act.DecreaseFontSize,
  },
  {
    key = '_',
    mods = 'CTRL',
    action = act.ResetFontSize,
  },
  {
    key = ' ',
    mods = 'CTRL|SHIFT',
    action = act.CharSelect {
      copy_on_select = true,
      copy_to = 'ClipboardAndPrimarySelection',
    },
  },
  {
    key = 'C',
    mods = 'CTRL',
    action = act.ActivateCopyMode,
  }
}

for i = 1, 8 do
  table.insert(config.keys, {
    key = tostring(i),
    mods = 'CTRL',
    action = act.ActivateTab(i - 1)
  })
end

for i = 1, 8 do
  table.insert(config.keys, {
    key = tostring(i),
    mods = 'CTRL|SHIFT',
    action = act.ActivateTab(i + 3)
  })
end

return config
