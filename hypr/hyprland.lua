hl.monitor({
	output = "",
	mode = "1366x768@60",
	position = "auto",
	scale = "1",
})
local terminal = "kitty"
local fileManager = "dolphin"
local menu = "qs -c noctalia-shell ipc call launcher toggle"
local setting = "qs -c noctalia-shell ipc call settings toggle"
local wallpaper = "qs -c noctalia-shell ipc call wallpaper toggle"
local session = "qs -c noctalia-shell ipc call sessionMenu toggle"
local media = "qs -c noctalia-shell ipc call media toggle"
local controlCenter = "qs -c noctalia-shell ipc call controlCenter toggle"
local clipboard = "qs -c noctalia-shell ipc call launcher clipboard"
hl.on("hyprland.start", function()
	hl.exec_cmd("hyprctl setcursor Bibata-Modern-Classic 16")
	hl.exec_cmd("qs -c noctalia-shell")
	hl.exec_cmd("nm-applet")
	hl.exec_cmd("kwybars-daemon")
	hl.exec_cmd("~/.config/Aftical-dot/shell-sh/notify.sh")
end)
hl.env("XCURSOR_SIZE", "16")
hl.env("XCURSOR_THEME", "Bibata-Modern-Classic")
hl.env("HYPRCURSOR_SIZE", "16")
hl.env("HYPRCURSOR_THEME", "Bibata-Modern-Classic")
hl.config({
	general = {
		gaps_in = 3,
		gaps_out = 5,
		border_size = 3,
		col = {
			active_border = { colors = { "rgba(33ccffee)", "rgba(00ff99ee)" }, angle = 45 },
			inactive_border = "rgba(0, 0, 0, 0)",
		},
		resize_on_border = false,
		allow_tearing = true,
		layout = "dwindle",
	},
	decoration = {
		rounding = 10,
		rounding_power = 2.4,
		active_opacity = 0.9,
		inactive_opacity = 0.9,
		shadow = {
			enabled = true,
			range = 40,
			render_power = 10,
			color = "rgba(1a1a1aee)",
		        scale = 0.99,
			offset = "0, 2",
		},
		blur = {
			enabled = true,
			size = 3,
			passes = 3,
			new_optimizations = true,
			vibrancy = 1,
		},
	},
	animations = {
		enabled = true,
	},
})
hl.curve("easy", { type = "spring", mass = 1, stiffness = 71.2633, dampening = 15.8273644 })
hl.curve("ins", { type = "spring", mass = 1, stiffness = 0.6, dampening = 0.6 })
hl.curve("easeOutQuint", { type = "bezier", points = { { 0.23, 1 }, { 0.32, 1 } } })
hl.curve("slide", { type = "bezier", points = { { 0.2, 1.2 }, { 0.7, 1 } } })
hl.curve("easeInOutCubic", { type = "bezier", points = { { 0.65, 0.05 }, { 0.36, 1 } } })
hl.curve("linear", { type = "bezier", points = { { 0, 0 }, { 1, 1 } } })
hl.curve("almostLinear", { type = "bezier", points = { { 0.5, 0.5 }, { 0.75, 1 } } })
hl.curve("quick", { type = "bezier", points = { { 0.15, 0 }, { 0.1, 1 } } })
hl.curve("inst", { type = "bezier", points = { { 0, 0 }, { 0, 0 } } })
hl.curve("easeOutQuint", { type = "bezier", points = { { 0.23, 1 }, { 0.32, 1 } } })
hl.curve("overshoot", { type = "bezier", points = { { 0.13, 0.99 }, { 0.29, 1.1 } } })
hl.animation({ leaf = "global", enabled = true, speed = 5, bezier = "default" })
hl.animation({ leaf = "border", enabled = true, speed = 5.39, bezier = "easeOutQuint" })
hl.animation({ leaf = "windows", enabled = true, speed = 4.79, spring = "easy" })
hl.animation({ leaf = "windowsIn", enabled = true, speed = 2, bezier = "overshoot", style = "gnomed" })
hl.animation({ leaf = "windowsOut", enabled = true, speed = 1, bezier = "overshoot", style = "gnomed" })
hl.animation({ leaf = "fadeIn", enabled = true, speed = 1.73, bezier = "almostLinear" })
hl.animation({ leaf = "fadeOut", enabled = true, speed = 1.46, bezier = "almostLinear" })
hl.animation({ leaf = "fade", enabled = true, speed = 3.03, bezier = "quick" })
hl.animation({ leaf = "layers", enabled = true, speed = 3.81, bezier = "easeOutQuint" })
hl.animation({ leaf = "layersIn", enabled = true, speed = 4, bezier = "easeOutQuint", style = "slide" })
hl.animation({ leaf = "layersOut", enabled = true, speed = 1.5, bezier = "linear", style = "slide" })
hl.animation({ leaf = "fadeLayersIn", enabled = true, speed = 1.79, bezier = "almostLinear" })
hl.animation({ leaf = "fadeLayersOut", enabled = true, speed = 1.39, bezier = "almostLinear" })
hl.animation({ leaf = "workspaces", enabled = true, speed = 4, bezier = "slide", style = "slide" })
hl.animation({ leaf = "workspacesIn", enabled = true, speed = 4, bezier = "slide", style = "slide" })
hl.animation({ leaf = "workspacesOut", enabled = true, speed = 4, bezier = "slide", style = "slide" })
hl.animation({ leaf = "zoomFactor", enabled = true, speed = 7, bezier = "quick" })
hl.config({
	dwindle = {
		preserve_split = true,
	},
	master = {
		new_status = "master",
	},
	scrolling = {
		fullscreen_on_one_column = true,
	},
	misc = {
		force_default_wallpaper = 0,
		disable_hyprland_logo = true,
	},
	input = {
		kb_layout = "us, la",
		kb_variant = ",stea",
		kb_model = "",
		kb_options = "grp:alt_space_toggle",
		kb_rules = "",
		follow_mouse = 1,
		sensitivity = 0,
		touchpad = {
			natural_scroll = false,
		},
		repeat_rate = 50,
		repeat_delay = 250,
	},
        -- plugin = {
        --         borders_plus_plus = {
        --         border_size_1 = 1,
        --                 add_borders = 1,
        --                 col = {
        --                         border_1 = "rgba(0, 0, 0, 0.1)"
        --                 }
        --         }
        -- }
})
hl.device({
	name = "epic-mouse-v1",
	sensitivity = -0.5,
})
hl.bind("SUPER + Return", hl.dsp.exec_cmd(terminal))
hl.bind("SUPER + T", hl.dsp.exec_cmd("kitty --app-id float"))
local closeWindowBind = hl.bind("SUPER + Q", hl.dsp.window.close())
hl.bind(
	"SUPER + CTRL + SHIFT + Q",
	hl.dsp.exec_cmd("command -v hyprshutdown >/dev/null 2>&1 && hyprshutdown || hyprctl dispatch 'hl.dsp.exit()'")
)
hl.bind("SUPER + E", hl.dsp.exec_cmd(fileManager))
hl.bind("SUPER + N", hl.dsp.exec_cmd("kitty nvim"))
hl.bind("SUPER + PRINT", hl.dsp.exec_cmd("hyprshot -m output"))
hl.bind("SUPER + SHIFT + PRINT", hl.dsp.exec_cmd("hyprshot -m region"))
hl.bind("SUPER + SHIFT + C", hl.dsp.exec_cmd("hyprpicker"))
hl.bind("SUPER + Z", hl.dsp.window.float({ action = "toggle" }))
hl.bind("SUPER + F", hl.dsp.window.fullscreen({ action = "toggle" }))
hl.bind("SUPER + SUPER_L ", hl.dsp.exec_cmd(menu))
hl.bind("SUPER + SHIFT + W", hl.dsp.exec_cmd(wallpaper))
hl.bind("SUPER + M", hl.dsp.exec_cmd(media))
hl.bind("SUPER + V", hl.dsp.exec_cmd(clipboard))
hl.bind("SUPER + Escape", hl.dsp.exec_cmd(session))
hl.bind("SUPER + SHIFT + comma", hl.dsp.exec_cmd(setting))
hl.bind("SUPER + comma", hl.dsp.exec_cmd(controlCenter))
hl.bind("SUPER + CTRL + L", hl.dsp.exec_cmd("hyprlock"))
hl.bind("SUPER + CTRL + Escape", hl.dsp.exec_cmd("kitty btop"))
hl.bind("SUPER + h", hl.dsp.focus({ direction = "left" }))
hl.bind("SUPER + j", hl.dsp.focus({ direction = "down" }))
hl.bind("SUPER + k", hl.dsp.focus({ direction = "up" }))
hl.bind("SUPER + l", hl.dsp.focus({ direction = "right" }))
hl.bind("F12", hl.dsp.exec_cmd("~/.config/Aftical-dot/shell-sh/notify.sh"))
for i = 1, 10 do
	local key = i % 10
	hl.bind("SUPER + " .. key, hl.dsp.focus({ workspace = i }))
	hl.bind("SUPER + SHIFT + " .. key, hl.dsp.window.move({ workspace = i }))
end
hl.bind("SUPER + S", hl.dsp.workspace.toggle_special("magic"))
hl.bind("SUPER + SHIFT + S", hl.dsp.window.move({ workspace = "special:magic" }))
hl.bind("SUPER + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind("SUPER + mouse_up", hl.dsp.focus({ workspace = "e-1" }))
hl.bind("SUPER + SHIFT + L", hl.dsp.focus({ workspace = "e+1" }))
hl.bind("SUPER + SHIFT + H", hl.dsp.focus({ workspace = "e-1" }))
hl.bind("SUPER + mouse:272", hl.dsp.window.drag(), { mouse = true })
hl.bind("SUPER + mouse:273", hl.dsp.window.resize(), { mouse = true })
hl.bind(
	"XF86AudioRaiseVolume",
	hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"),
	{ locked = true, repeating = true }
)
hl.bind(
	"XF86AudioLowerVolume",
	hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"),
	{ locked = true, repeating = true }
)
hl.bind(
	"XF86AudioMute",
	hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"),
	{ locked = true, repeating = true }
)
hl.bind(
	"XF86AudioMicMute",
	hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"),
	{ locked = true, repeating = true }
)
hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%+"), { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%-"), { locked = true, repeating = true })
hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl next"), { locked = true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("playerctl previous"), { locked = true })
hl.bind("SUPER + F1", hl.dsp.exec_cmd("brightnessctl set 5%-"), { repeating = true })
hl.bind("SUPER + F2", hl.dsp.exec_cmd("brightnessctl set +5%"), { repeating = true })
hl.bind("SUPER + F3", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"), { repeat_press = true })
hl.bind("SUPER + F4", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+"), { repeat_press = true })
hl.bind("SUPER + F5", hl.dsp.exec_cmd("playerctl previous"))
hl.bind("SUPER + F6", hl.dsp.exec_cmd("playerctl play-pause"))
hl.bind("SUPER + F7", hl.dsp.exec_cmd("playerctl next"))
local suppressMaximizeRule = hl.window_rule({
	name = "suppress-maximize-events",
	match = { class = ".*" },
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
