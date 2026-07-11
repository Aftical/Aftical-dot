local suppressMaximizeRule = hl.window_rule({
	name = "suppress-maximize-events",
	match = {
    class = ".*"
  },
	suppress_event = "maximize",
})
hl.window_rule({
	name = "fix-xwayland-drags",
	match = {
		class = "^$",
		title = "^$",
		xwayland = true,
		float = true,
		fullscreen = false,
		pin = false,
	},
	no_focus = true,
})
hl.window_rule({
	name = "move-hyprland-run",
	match = {
		class = "hyprland-run",
	},
	move = "20 monitor_h-120",
	float = true,
})
hl.window_rule({
	name = "java",
	match = {
		class = "java",
	},
	float = true,
})
hl.window_rule({
	name = "PortProton",
	match = {
		class = "PortProton",
	},
	float = true,
})
hl.window_rule({
	name = "mpv",
	match = {
		class = "mpv",
	},
	float = true,
	center = true,
	size = "1280 720",
	opacity = "2",
})
hl.layer_rule({
	name = "mpv",
	match = {
		namespace = "mpv",
	},
	blur = false,
})
hl.window_rule({
	name = "feh",
	match = {
		class = "feh",
	},
	float = true,
	center = true,
	size = "1000 600",
	opacity = "2",
})
hl.window_rule({
	name = "kitty float",
	match = {
		class = "float",
	},
	float = true,
	center = true,
	size = "700 350",
})
hl.window_rule({
  name = "blender",
  match = {
    class = "blender",
  },
  opacity = "2",
  size = "900 500",
  center = true,
  float = true,
})
hl.window_rule({
  name = "nvim",
  match = {
    class = "editor",
  },
  float = true,
  size = "500 700",
})
hl.window_rule({
  name = "thunar",
  match = {
    class = "thunar",
  },
  center = true,
  float = true,
  size = "500 50",
})
