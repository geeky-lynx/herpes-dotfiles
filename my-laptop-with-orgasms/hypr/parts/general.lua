-- Refer to https://wiki.hypr.land/Configuring/Basics/Variables/

hl.config({
  general = {
    gaps_in = 5,
    gaps_out = 20,
    border_size = 2,
    layout = "dwindle",

    -- Please see https://wiki.hypr.land/Configuring/Advanced-and-Cool/Tearing/ before you turn this on
    allow_tearing = false
  },

  group = {
    groupbar = {
      font_size = 12,
      height = 15
    }
  },

  -- See https://wiki.hypr.land/Configuring/Layouts/Dwindle-Layout/ for more
  dwindle = {
    pseudotile = true,
    preserve_split = true
  },

  -- See https://wiki.hypr.land/Configuring/Layouts/Master-Layout/ for more
  -- master = {
  --   new_is_master = true
  -- }

  -- See https://wiki.hypr.land/Configuring/Layouts/Scrolling-Layout/ for more
  -- hl.config({
  --     scrolling = {
  --         fullscreen_on_one_column = true,
  --     },
  -- })
})

