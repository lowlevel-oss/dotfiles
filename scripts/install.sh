sudo pacman -Syu
sudo pacman -S nautilus rofi anki hyprpicker wl-clipboard code telegram-desktop discord waybar hyprpaper hyprpolkitagent hypridle starship wlogout fastfetch grim mako hyprlock ttf-meslo-nerd-font-powerlevel10k ttf-jetbrains-mono-nerd slurp rofi-emoji bluemanager

sudo rm ~/.config/starship.toml

ln -sfn ~/dotfiles/hyprland ~/.config/hypr
ln -s ~/dotfiles/starship/* ~/.config/
ln -sfn ~/dotfiles/kitty ~/.config/kitty
ln -sfn ~/dotfiles/fastfetch ~/.config/fastfetch
ln -sfn ~/dotfiles/rofi ~/.config/rofi
ln -sfn ~/dotfiles/wlogout ~/.config/wlogout
ln -sfn ~/dotfiles/waybar/ ~/.config/waybar

fish -c "source ~/.config/fish/config.fish"

fish -c 'set -U fish_greeting "Welcome back ⚡"'

bash -c "$(curl -fsSL https://raw.githubusercontent.com/keyitdev/sddm-astronaut-theme/master/setup.sh)"

sudo pacman -S --needed base-devel
git clone https://aur.archlinux.org/paru.git
cd paru || exit 1
makepkg -si

cd ~

paru -S catppuccin-gtk-theme-mocha