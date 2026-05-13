local suppressMaximizeRule = hl.window_rule({
    name  = "suppress-maximize-events",
    match = { class = ".*" },

    suppress_event = "maximize",
})
-- suppressMaximizeRule:set_enabled(false)

hl.window_rule({
    name  = "fix-xwayland-drags",
    match = {
        class      = "^$",
        title      = "^$",
        xwayland   = true,
        float      = true,
        fullscreen = false,
        pin        = false,
    },

    no_focus = true,
})

hl.window_rule({
    name  = "move-hyprland-run",
    match = { class = "hyprland-run" },

    move  = "20 monitor_h-120",
    float = true,
})

hl.window_rule({
    name = "scrcpy-phone-mirror",
    match = { class = "^(scrcpy)$" },

    float  = true,
    center = true,
    size   = { 432, 960 },
})

hl.window_rule({
    name  = "picture-in-picture",
    match = { title = "^(Picture-in-picture)$" },

    float   = true,
    pin     = true,
    no_anim = true,
    size    = { 600, 340 },
    move    = "1310 730",
})

hl.window_rule({
    name  = "localsend-window",
    match = { class = "^(localsend)$" },

    float  = true,
    center = true,
    size   = { 420, 600 },
})

hl.window_rule({
    name  = "calculator-window",
    match = { class = "^(calculator)$" },

    float  = true,
    center = true,
    size   = { 450, 300 },
})

hl.layer_rule({
    name  = "blur-logout-dialog",
    match = { namespace = "logout_dialog" },

    blur = true,
})
