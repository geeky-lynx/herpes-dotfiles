-- Example binds, see https://wiki.hypr.land/Configuring/Basics/Binds/ for more

-- TODO things...
    -- - [x] TODO: Add `wob` outputs
    -- - [ ] TODO: Fix `wob`'s output of muting speakers's volume
    -- - [x] TODO: Fix muting over and over instead of toggling for mic
    -- - [ ] TODO: Fix last keybindings + check if all correct
    -- - [ ] TODO: Check for bindl, bindm, and shit

require("./defaults")

-- Basic & advanced bindings
hl.bind("ALT + TAB"               , hl.dsp.window.cycle_next())
hl.bind(main_mod .. " +         Q", hl.dsp.window.close())
hl.bind(main_mod .. " +         T", hl.dsp.exec_cmd(terminal))
hl.bind(main_mod .. " +         E", hl.dsp.exec_cmd(file_manager))
hl.bind(main_mod .. " +         R", hl.dsp.exec_cmd(menu))
hl.bind(main_mod .. " +         V", hl.dsp.exec_cmd(clipboard))
hl.bind(main_mod .. " +         O", hl.dsp.exec_cmd(eye_filter))
hl.bind(main_mod .. " +         N", hl.dsp.exec_cmd(notifications_menu))
hl.bind(main_mod .. " +         L", hl.dsp.exec_cmd("hyprlock"))
hl.bind(main_mod .. " + SHIFT + L", hl.dsp.exec_cmd("wlogout"))
hl.bind(main_mod .. " + SHIFT + X", hl.dsp.exec_cmd(screenshot_full))
hl.bind(main_mod .. " +         X", hl.dsp.exec_cmd(screenshot_region))

hl.bind(main_mod .. " +         F", hl.dsp.fullscreen({ action = "toggle" }))
hl.bind(main_mod .. " +         P", hl.dsp.window.pin())
hl.bind(main_mod .. " +         J", hl.dsp.layout("togglesplit")) -- dwindle
-- hl.bind(main_mod .. " +         J", hl.dsp.layout("swapsplit")) -- dwindle
hl.bind(main_mod .. " +         U", hl.dsp.window.float({ action = "toggle" }))
hl.bind(main_mod .. " + SHIFT + U", hl.dsp.window.pseudo()) -- gonna dwindle

-- Function (Fn) Media keybindings
hl.bind(main_mod .. " + F2", exec, gamemode)
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("pamixer --increase 5; echo $(pamixer --get-volume) > /tmp/wobpipe"), { locked = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("pamixer --decrease 5; echo $(pamixer --get-volume) > /tmp/wobpipe"), { locked = true })
hl.bind("XF86AudioMute",        hl.dsp.exec_cmd(toggle_speakers),        { locked = true })
hl.bind("XF86AudioMicMute",     hl.dsp.exec_cmd(toggle_mic),             { locked = true })
hl.bind("XF86AudioPlay",        hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPause",       hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioNext",        hl.dsp.exec_cmd("playerctl next"),       { locked = true })
hl.bind("XF86AudioPrev",        hl.dsp.exec_cmd("playerctl previous"),   { locked = true })

-- My laptop doesn't have Fn for play/pause, next or prev
hl.bind(main_mod .. " +         K", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind(main_mod .. " +         B", hl.dsp.exec_cmd("playerctl next"),       { locked = true })
hl.bind(main_mod .. " + SHIFT + B", hl.dsp.exec_cmd("playerctl previous"),   { locked = true })
    -- Alternate to pamixer: wpctl

-- Group bindings
hl.bind(main_mod .. " +         G",   hl.dsp.group.toggle())
hl.bind(main_mod .. " +         TAB", hl.dsp.group.next())
hl.bind(main_mod .. " + SHIFT + TAB", hl.dsp.group.prev())

-- Window specific bindings
    -- Move focus with main_mod + arrow keys
    -- Move windows with main_mod + Shift + arrow keys
local directions = ["left", "right", "up", "down"]
for _dir in directions do
  hl.bind(main_mod .. " +         " .. _dir, hl.dsp.focus({ direction = _dir }))
  hl.bind(main_mod .. " + SHIFT + " .. _dir, hl.dsp.window.move({ direction = _dir }))
end

-- Workspace specific bindings
-- Switch workspaces with main_mod + [0-9]
-- Move active window to a workspace with main_mod + SHIFT + [0-9]
for i = 1, 10 do 
  hl.bind(main_mod .. " +         " .. i % 10, hl.dsp.focus({ workspace = i }))
  hl.bind(main_mod .. " + SHIFT + " .. i % 10, hl.dsp.window.move({ workspace = i }))
end

-- Example special workspace (scratchpad)
hl.bind(main_mod .. " +         S", hl.dsp.workspace.toggle_special("magic"))
hl.bind(main_mod .. " + SHIFT + S", hl.dsp.window.move({ workspace = "special:magic" }))

-- Mouse specific bindings
   -- Scroll through existing workspaces with main_mod + scroll
hl.bind(main_mod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" })
hl.bind(main_mod .. " + mouse_up",   hl.dsp.focus({ workspace = "e-1" })

  -- Pg Up & Down
hl.bind(main_mod .. " + page_down", hl.dsp.focus({ workspace = "e-1" })
hl.bind(main_mod .. " + page_up",   hl.dsp.focus({ workspace = "e+1" })

   -- Move/resize windows with main_mod + LMB/RMB and dragging
hl.bind(main_mod .. " + mouse:272", hl.window.drag(), { mouse = true })
hl.bind(main_mod .. " + mouse:273", hl.window.resize(), { mouse = true })

