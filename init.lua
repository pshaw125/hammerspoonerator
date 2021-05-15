-- helpful aliases - pilfered from github:heptal; tbd which ones I wanna keep
i = hs.inspect
fw = hs.window.focusedWindow
fmt = string.format
bind = hs.hotkey.bind
clear = hs.console.clearConsole
reload = hs.reload
pbcopy = hs.pasteboard.setContents
std = hs.stdlib and require("hs.stdlib")

-- useful keybindings - adapted from github:heptal
hyper = {'⌘', '⌥', '⌃'}
bind(hyper, "c", hs.toggleConsole)
bind(hyper, '.', hs.hints.windowHints)

require "window" -- window management


hs.hotkey.bind(hyper, "R", function()
  hs.reload()
end)
hs.alert.show("Config loaded 🔨🥄🚀")
