#!/bin/bash
killall waybar; waybar
pkill kwybars; kill cava; kill kwybars-daemon; kwybars-daemon
hyprctl reload
