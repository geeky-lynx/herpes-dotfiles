-- See https://wiki.hypr.land/Configuring/Basics/Autostart/

local function startup_proc()
  hl.exec_cmd("vicinae server")
  hl.exec_cmd("hyprpaper")
  hl.exec_cmd("LC_TIME=\"sr_RS.UTF-8\" waybar") -- must change env variable LC_TIME to make mondays as the first day of the week
  hl.exec_cmd("swaync")
  hl.exec_cmd("mkfifo /tmp/wobpipe; tail -f /tmp/wobpipe | wob")
end

hl.on("hyprland.start", startup_proc)
-- hl.exec_cmd("~/Games/xava-x86_64.AppImage -p ~/.config/xava/config") -- This takes battery; not suitable power savings & high performanceÔ
