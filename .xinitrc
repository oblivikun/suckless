xsetroot -solid  "#000000" &

slstatus &

# Edit to set the wallpaper.
# feh --bg-fill ~/wallpaper/bg.png

# start up picom to avoid screen tearing
picom --vsync &

# Saving a dwm log
exec dwm > ~/.dwm.log
