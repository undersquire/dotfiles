local wezterm = require 'wezterm'
local act = wezterm.action
local config = {}

config.default_prog = {'nu'}
config.disable_default_key_bindings = true
config.adjust_window_size_when_changing_font_size = false
config.keys = {
  {
    key = 'r',
    mods = 'SUPER',
    action = act.ResetTerminal,
  },
  {
    key = 'q',
    mods = 'SUPER',
    action = act.QuitApplication,
  },
  {
    key = 'p',
    mods = 'SUPER',
    action = act.ActivateCommandPalette,
  },
  {
    key = 'c',
    mods = 'SUPER',
    action = act.CopyTo 'ClipboardAndPrimarySelection',
  },
  {
    key = 'v',
    mods = 'SUPER',
    action = act.PasteFrom 'Clipboard',
  },
  {
    key = 'V',
    mods = 'SUPER',
    action = act.PasteFrom 'PrimarySelection',
  },
  {
    key = 't',
    mods = 'SUPER',
    action = act.SpawnTab 'CurrentPaneDomain',
  },
  {
    key = 'w',
    mods = 'SUPER',
    action = act.CloseCurrentTab { confirm = true },
  },
  {
    key = '[',
    mods = 'SUPER',
    action = act.ActivateTabRelative(-1),
  },
  {
    key = ']',
    mods = 'SUPER',
    action = act.ActivateTabRelative(1),
  },
  {
    key = 'v',
    mods = 'ALT',
    action = act.SplitVertical,
  },
  {
    key = 'c',
    mods = 'ALT',
    action = act.SplitHorizontal,
  },
  {
    key = 'H',
    mods = 'ALT',
    action = act.SplitPane { direction = 'Left' },
  }, 
  {
    key = 'J',
    mods = 'ALT',
    action = act.SplitPane { direction = 'Down' },
  }, 
  {
    key = 'K',
    mods = 'ALT',
    action = act.SplitPane { direction = 'Up' },
  },
  {
    key = 'L',
    mods = 'ALT',
    action = act.SplitPane { direction = 'Right' },
  },
  {
    key = 'w',
    mods = 'ALT',
    action = act.CloseCurrentPane { confirm = true },
  },
  {
    key = 'h',
    mods = 'ALT',
    action = act.ActivatePaneDirection 'Left',
  },
  {
    key = 'j',
    mods = 'ALT',
    action = act.ActivatePaneDirection 'Down',
  },
  {
    key = 'k',
    mods = 'ALT',
    action = act.ActivatePaneDirection 'Up',
  },
  {
    key = 'l',
    mods = 'ALT',
    action = act.ActivatePaneDirection 'Right',
  },
  {
    key = 'v',
    mods = 'SUPER',
    action = act.PasteFrom 'Clipboard',
  },
  {
    key = '=',
    mods = 'SUPER',
    action = act.IncreaseFontSize,
  },
  {
    key = '-',
    mods = 'SUPER',
    action = act.DecreaseFontSize,
  },
  {
    key = '_',
    mods = 'SUPER',
    action = act.ResetFontSize,
  },
  {
    key = ' ',
    mods = 'SUPER|SHIFT',
    action = act.CharSelect {
      copy_on_select = true,
      copy_to = 'ClipboardAndPrimarySelection',
    },
  },
  {
    key = 'C',
    mods = 'SUPER',
    action = act.ActivateCopyMode,
  }
}

for i = 1, 4 do
  table.insert(config.keys, {
    key = tostring(i),
    mods = 'SUPER',
    action = act.ActivateTab(i - 1)
  })
end

for i = 1, 4 do
  table.insert(config.keys, {
    key = tostring(i),
    mods = 'SUPER|SHIFT',
    action = act.ActivateTab(i + 3)
  })
end

return config
