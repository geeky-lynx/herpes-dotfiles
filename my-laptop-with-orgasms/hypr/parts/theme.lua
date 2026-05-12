-- Reference: https://wiki.hypr.land/Configuring/Basics/Variables/
require("~/.config/hypr/mocha")

hl.config({
  general = {
    col = {
      active_border = { colors = {sapphire, sky}, angle = "30deg" },
      inactive_border = surface2
    }
  },

  group = {
    col = {
      border_active = skyish_blue,
      border_inactive = surface1 -- $crust
    },

    groupbar = {
      text_color = text,
      col = {
        active = surface1,
        inactive = base
      }
    }
  },

  decoration = {
    shadow = { color = crust }
  },

  misc = {
    col = { splash = text }
  }
})

