picom --experimental-backends &
~/.fehbg

# dwmblocks &

sxhkd &

# Polybar on dual monitors
if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar --reload example &
  done
else
  polybar --reload example &
fi


