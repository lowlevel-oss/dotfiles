sudo pacman -Syu
sudo pacman -S nautilus rofi anki hyprpicker wl-clipboard code telegram-desktop discord waybar hyprpaper hyprpolkitagent hypridle starship wlogout fastfetch grim

sudo rm -r ~/.config/hypr
sudo rm -r ~/.config/kitty
sudo rm -r ~/.config/fastfetch
sudo rm -r ~/.config/rofi
sudo rm -r ~/.config/wlogout
sudo rm ~/.config/starship.toml

ln -sfn ~/dotfiles/hyprland ~/.config/hypr
ln -s ~/dotfiles/starship/* ~/.config/
ln -sfn ~/dotfiles/kitty ~/.config/kitty
ln -sfn ~/dotfiles/fastfetch ~/.config/fastfetch
ln -sfn ~/dotfiles/rofi ~/.config/rofi
ln -sfn ~/dotfiles/wlogout ~/.config/wlogout


source ~/.config/fish/config.fish

set -U fish_greeting "Welcome back ⚡"
