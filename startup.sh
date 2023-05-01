#!/bin/zsh

echo "Please select an option:"
echo "1. Just use internet and stuff"
echo "2. Anonimity settings, ma boy"
echo "3. Doing Codewars challenges"
echo "4. Actual video course"
echo "5. Actual book course"

read option

if [ $option -eq 1 ]; then
	detach google-chrome --new-window --profile-email="alac1984@gmail.com"
	sleep 1
elif [ $option -eq 2 ]; then
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
elif [ $option -eq 3 ]; then
	detach google-chrome --new-window --profile-email="alac1984@gmail.com" web.whatsapp.com
	sleep 1
	detach google-chrome --new-window --profile-email="alac1984@gmail.com" codewars.com
	sleep 1
	detach google-chrome --new-window --profile-email="alac1984@gmail.com" keep.google.com
	sleep 1
	detach hyper
	sleep 1
	wmctrl -a WhatsApp -t 0
	sleep 1
	wmctrl -a Codewars -t 1
	sleep 1
	wmctrl -a Hyper -t 2
	sleep 1
	wmctrl -a Keep -t 3
	sleep 1
	window_id=$(wmctrl -l | grep "Keep" | cut -d' ' -f1)
	xdotool windowactivate $window_id
	sleep 1
	xdotool key F11;
	window_id=$(wmctrl -l | grep "Codewars" | cut -d' ' -f1)
	xdotool windowactivate $window_id
	sleep 1
	xdotool key F11;
	sleep 1
	window_id=$(wmctrl -l | grep "Hyper" | cut -d' ' -f1)
	xdotool windowactivate $window_id
	sleep 1
	xdotool key F11;
	sleep 1
	xdotool type --clearmodifiers "cd Projects/mynotebooks/codewars"; xdotool key Return;
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
elif [ $option -eq 4 ]; then
	detach google-chrome --new-window --profile-email="alac1984@gmail.com" web.whatsapp.com
	sleep 1
	detach google-chrome --new-window --profile-email="alac1984@gmail.com" "www.youtube.com/watch?v=i7vOAcUo5iA"
	sleep 1
	detach google-chrome --new-window --profile-email="alac1984@gmail.com" keep.google.com
	sleep 1
	detach hyper
	sleep 2
	wmctrl -a WhatsApp -t 0
	sleep 1
	wmctrl -a Algebra -t 1
	sleep 1
	wmctrl -a Hyper -t 2
	sleep 1
	wmctrl -a Keep -t 3
	sleep 1
	window_id=$(wmctrl -l | grep "Keep" | cut -d' ' -f1)
	xdotool windowactivate $window_id
	xdotool key F11;
	sleep 1
	window_id=$(wmctrl -l | grep "Hyper" | cut -d' ' -f1)
	xdotool windowactivate $window_id
	xdotool key F11;
	sleep 1
	window_id=$(wmctrl -l | grep "Hyper" | cut -d' ' -f1)
	sleep 1
	xdotool windowactivate $window_id
	sleep 1
	xdotool type --clearmodifiers "cd Projects/mynotebooks/college_algebra"; xdotool key Return;
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
elif [ $option -eq 5 ]; then
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
else
	echo "Invalid option. Please select a number from 1 to 5."
fi
