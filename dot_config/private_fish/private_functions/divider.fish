function divider -d "Display a visual divider line with the given text"
    set -l text ( string pad --width $COLUMNS --right --char = "===== $argv " )
    echo -e "\e[48;2;23;90;23m$text\e[0m"
end
