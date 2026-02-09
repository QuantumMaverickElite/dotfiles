# dotfiles

Personal config backups (Hyprland / Waybar / Swappy) for fast restore on new machines.

## Waybar
- `waybar/config`
- `waybar/style.css`
- `waybar/scripts/vclock.sh`

### Install
```bash
cp -r waybar ~/.config/
chmod +x ~/.config/waybar/scripts/vclock.sh
pkill waybar && waybar &


## Hyprland
- `hypr/hyprland.conf`
- `hypr/hyprlock.conf`
- `hypr/wallpapers/`

### Install
```bash
cp -r hypr ~/.config/

