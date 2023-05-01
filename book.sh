#!/bin/zsh
# In case ExpressVPN is on
expressvpn disconnect

# Get all open windows
windows=$(wmctrl -l | awk '{print $1}')

# Loop through each window and close it
for window in $windows; do
	wmctrl -i -c $window
done

# Do all stuff
detach google-chrome --new-window --profile-email="alac1984@gmail.com" web.whatsapp.com
sleep 1
detach evince /home/andre/Dropbox/Europlan/algorithm_erickson_notes.pdf
sleep 1
detach google-chrome --new-window --profile-email="alac1984@gmail.com" keep.google.com
sleep 1
detach hyper
sleep 2
wmctrl -a WhatsApp -t 0
sleep 1
wmctrl -a algorithm -t 1
sleep 1
wmctrl -a Hyper -t 2
sleep 1
wmctrl -a Keep -t 3
sleep 1
window_id=$(wmctrl -l | grep "Keep" | cut -d' ' -f1)
xdotool windowactivate $window_id
sleep 1
xdotool key F11;
sleep 1
window_id=$(wmctrl -l | grep "algorithm" | cut -d' ' -f1)
xdotool windowactivate $window_id
sleep 1
xdotool key F11;
sleep 1
window_id=$(wmctrl -l | grep "Hyper" | cut -d' ' -f1)
xdotool windowactivate $window_id
sleep 1
xdotool key F11;
sleep 1
xdotool windowactivate $window_id
sleep 1
xdotool type --clearmodifiers "cd Projects/mynotebooks/algorithms_erickson"; xdotool key Return;
sleep 1
xdotool type --clearmodifiers "poetry shell"; xdotool key Return;
sleep 1
xdotool type --clearmodifiers "jupyter notebook --no-browser &!"; xdotool key Return;
sleep 1
detach google-chrome --new-window http://localhost:8888
sleep 1
wmctrl -a notebook -t 2
sleep 1
window_id=$(wmctrl -l | grep "notebook" | cut -d' ' -f1)
xdotool windowactivate $window_id
xdotool key F11;
