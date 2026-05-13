-- Default curves and animations, see:
-- https://wiki.hypr.land/Configuring/Advanced-and-Cool/Animations/

local function register_animation(name, da_speed, da_bezier, da_style)
  local _bezier = da_bezier or "default"
  local _style = da_style or ""
  hl.animation({ leaf = name, enabled = true, speed = da_speed, bezier = _bezier, style = _style })
end

hl.curve("cubicBezierOut", { type = "bezier", points = { {0.16, 1}, {0.3, 1} } })

register_animation("windows", 7, "cubicBezierOut")
register_animation("windowsOut", 7, "default", "popin 80%")
register_animation("border", 10)
register_animation("borderangle", 8)
register_animation("fade", 7)
register_animation("workspaces", 6)

