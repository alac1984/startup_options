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
expressvpn connect br2
sleep 1
detach google-chrome --new-window --profile-email="alac1984@gmail.com" web.whatsapp.com
sleep 1
detach google-chrome --new-window --profile-email="andrearaujo23@gmail.com" web.skype.com
sleep 1
detach brave-browser
sleep 1
detach hyper
sleep 2
wmctrl -a WhatsApp -t 0
sleep 1
wmctrl -a Brave -t 1
sleep 1
wmctrl -a Hyper -t 2
sleep 1
window_id=$(wmctrl -l | grep "Hyper" | cut -d' ' -f1)
xdotool windowactivate $window_id
sleep 1
xdotool key F11;
xdotool type --clearmodifiers "vim Documents/.text01"; xdotool key Return;
sleep 1
wmctrl -a Skype -t 3
sleep 1
window_id=$(wmctrl -l | grep "Skype" | cut -d' ' -f1)
xdotool windowactivate $window_id
sleep 1
xdotool key F11;
sleep 1
