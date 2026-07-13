hl.config({
	general = {
		gaps_in = 1,
		gaps_out = 5,
		border_size = 2,
		col = {
			--active_border = { colors = { "rgba(33ccffee)", "rgba(00ff99ee)" }, angle = 45 },
			--inactive_border = "rgba(33ccff00)",
			active_border = { colors = { "#e7ad65", "#7da2be" }, angle = 45 },
			inactive_border = "rgba(33ccff00)",
			--active_border = { colors = { "#00000000", "#00000000" }, angle = 45 },
			--inactive_border = "rgba(33ccff00)",
		},
		resize_on_border = true,
		allow_tearing = true,
		layout = "master",
	},
	decoration = {
		rounding = 10,
		rounding_power = 2.4,
		active_opacity = 0.9,
		inactive_opacity = 0.9,
		shadow = {
			enabled = false,
			range = 40,
			render_power = 10,
			color = "rgba(1a1a1aee)",
		},
		blur = {
			enabled = true,
			size = 2,
			passes = 3,
			new_optimizations = true,
			vibrancy = 1,
		},
	},
	animations = { enabled = true },
	dwindle = { preserve_split = true },
	master = { new_status = "master" },
	scrolling = { fullscreen_on_one_column = true },
	misc = {
		force_default_wallpaper = 0,
		disable_hyprland_logo = true,
	},
	input = {
		kb_layout = "us",
		kb_variant = "",
		kb_model = "",
		kb_options = "",
		kb_rules = "",
		follow_mouse = 1,
		sensitivity = 0,
		touchpad = {
			natural_scroll = false,
		},
		repeat_rate = 50,
		repeat_delay = 250,
	},
})
hl.device({
	name = "epic-mouse-v1",
	sensitivity = -0.5,
})
