-- Adapted from heptal (& transitive adaptations)

-- imports
--require "windowcycler"

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "W", function()
  hs.alert.show("Hello World!")
end)

hs.alert.show("Config loaded 🔨🥄🚀")
