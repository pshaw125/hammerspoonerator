local windowPositionsByKey = {
  -- init x, init y, size x, size y
  { key = "Up",    bounds = { 0, 0, 1,.5} },
  { key = "Down",  bounds = { 0,.5, 1,.5} },
  { key = "Left",  bounds = { 0, 0,.5, 1} },
  { key = "Right", bounds = {.5, 0,.5, 1} },
  { key = "M",     bounds = { 0, 0, 1, 1} },
  { key = "1",     bounds = { 0, 0,.5,.5} },
  { key = "2",     bounds = {.5, 0,.5,.5} },
  { key = "3",     bounds = { 0,.5,.5,.5} },
  { key = "4",     bounds = {.5,.5,.5,.5} },
}

-- move and/or resize windows -- pilfered from github:heptal
local function shape_window(bounds)
  return function()
    local win = fw()
    if win then win:move(bounds) end
  end
end

-- key-based window movement/resize operations - adapted from github:heptal
hs.fnutils.each(windowPositionsByKey, function(keybind)
    bind(hyper, keybind.key, shape_window(keybind.bounds), nil, nil)
end)
