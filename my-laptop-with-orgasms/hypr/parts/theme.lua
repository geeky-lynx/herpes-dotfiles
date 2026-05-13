-- Reference: https://wiki.hypr.land/Configuring/Basics/Variables/
require("mocha")

local _general = {
  col = {
    active_border = { colors = {sapphire, sky}, angle = 30 },
    inactive_border = surface2
  }
}

local _group = {
  col = {
    border_active = skyish_blue,
    border_inactive = surface1 -- crust
  },

  groupbar = {
    text_color = text,
    col = {
      active = surface1,
      inactive = base
    }
  }
}

local _decoration = {
  shadow = { color = crust }
}

local _misc = {
  col = { splash = text }
}

hl.config({
  general = _general,
  group = _group,
  decoration = _decoration,
  misc = _misc
})

