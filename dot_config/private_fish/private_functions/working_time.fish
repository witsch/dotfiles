function working_time
    set source ~/Sync/arbeitszeiten.txt
    set update ~/.config/fish/functions/duration.py

    set now ( date +%H:%M )
    test "$working_time_last" != "$now"
    and set -U working_time_duration ( tail -20 $source | python3.9 $update )
    and set -U working_time_last $now
    echo $working_time_duration
end
