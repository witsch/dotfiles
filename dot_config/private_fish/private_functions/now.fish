function now -d "Display current time rounded to 5 minutes"
    date '+%H %M' | read -fa time
    math "5 * round $time[2] / 5" | string pad -c0 -w2 | read -f minutes
    echo "$time[1]:$minutes"
end
