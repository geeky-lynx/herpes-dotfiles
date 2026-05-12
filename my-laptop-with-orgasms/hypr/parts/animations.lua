-- Default curves and animations, see:
-- https://wiki.hypr.land/Configuring/Advanced-and-Cool/Animations/

local function register_animation(name, da_speed, da_bezier = "default", da_style = "")
  hl.animation({ leaf = name, enabled = true, speed = da_speed, bezier = da_bezier, style = da_style })
  -- return { leaf = name, enabled = true, speed = da_speed, bezier = da_bezier, style = da_style }
end

hl.curve("cubicBezierOut", { type = "bezier", points = { {0.16, 1}, {0.3, 1} } })

-- hl.animation({ leaf = "windows", enabled = true, speed = 7, bezier = "cubicBezierOut" })

register_animation("windows", 7, "cubicBezierOut")
register_animation("windowsOut", 7, "default", "popin 80%")
register_animation("border", 10)
register_animation("borderangle", 8)
register_animation("fade", 7)
register_animation("workspace", 6)

