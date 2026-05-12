-- Reference: https://wiki.hypr.land/Configuring/Basics/Variables/
hl.config({
  input = {
    -- English (Default), Serbian (Latin), Serbian (Cyrillic)
    kb_layout = "us, rs, rs",
    kv_variant = ", latin,",
    kb_model = "",
    kb_options = "grp:win_space_toggle", -- Switching on WIN + Space

    follow_mouse = 1,

    touchpad = {
      natural_scroll = false
    },

    sensitivity = 0 -- -1.0 - 1.0, 0 means no modification.
  }
})

