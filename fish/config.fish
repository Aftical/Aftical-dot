if status is-interactive
    # Commands to run in interactive sessions can go here
end

# starship init fish | source
fastfetch

abbr -a pac "sudo pacman -S"
abbr -a aur "yay -S"
abbr -a ls "eza --icons -la"
abbr -a c clear

alias sylve nvim
