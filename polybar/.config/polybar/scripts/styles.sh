#!/usr/bin/zsh

## Dirs
polybar_path="$HOME/.config/polybar"

# polybar ---------------------------------
sed -i -e 's/bg = .*/bg = #212B30/g' $polybar_path/colors.ini
sed -i -e 's/bg-alt = .*/bg-alt = #5C6F7B/g' $polybar_path/colors.ini
sed -i -e 's/fg = .*/fg = #C4C7C5/g' $polybar_path/colors.ini
sed -i -e 's/ac = .*/ac = #4DD0E1/g' $polybar_path/colors.ini

sed -i -e 's/red = .*/red = #EC7875/g' $polybar_path/colors.ini
sed -i -e 's/pink = .*/pink = #EC407A/g' $polybar_path/colors.ini
sed -i -e 's/purple = .*/purple = #BA68C8/g' $polybar_path/colors.ini
sed -i -e 's/blue = .*/blue = #42A5F5/g' $polybar_path/colors.ini
sed -i -e 's/cyan = .*/cyan = #4DD0E1/g' $polybar_path/colors.ini
sed -i -e 's/teal = .*/teal = #00B19F/g' $polybar_path/colors.ini
sed -i -e 's/green = .*/green = #61C766/g' $polybar_path/colors.ini
sed -i -e 's/lime = .*/lime = #B9C244/g' $polybar_path/colors.ini
sed -i -e 's/yellow = .*/yellow = #FDD835/g' $polybar_path/colors.ini
sed -i -e 's/amber = .*/amber = #FBC02D/g' $polybar_path/colors.ini
sed -i -e 's/orange = .*/orange = #E57C46/g' $polybar_path/colors.ini
sed -i -e 's/brown = .*/brown = #AC8476/g' $polybar_path/colors.ini
sed -i -e 's/indigo = .*/indigo = #6C77BB/g' $polybar_path/colors.ini

# relaunch polybar
polybar-msg cmd restart

else
echo ""
fi
 
