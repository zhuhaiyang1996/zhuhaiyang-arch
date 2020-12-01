#!/bin/sh

case "$1" in
    --clean)
        question=$(echo "✔ YES|✖ NO" | /usr/local/bin/rofi -sep "|" \
        -dmenu -i -p 'CLEAN? ' "" -theme oxide -width 15 \
        -eh 1 -line-padding 4 -padding 20 -lines 2 -color-enabled -f "Font Awesome 5 Brands") 

        case $question in
            *YES)
                sudo rm -rf ~/.local/share/Trash/files
                sudo rm -rf ~/.local/share/Trash/info
                mkdir ~/.local/share/Trash/files
                mkdir ~/.local/share/Trash/info
                ;;
            *NO)
                ~/.config/polybar/launch.sh
                ;;
            *)
                exit 0  # do nothing on wrong response
                ;;
        esac
        ;;
    *)
        root=$(ls -A ~/.local/share/Trash/files/ | wc -l )
        sum=$(echo $root|bc)
        printf " (%s)" $sum
        ;;
esac
