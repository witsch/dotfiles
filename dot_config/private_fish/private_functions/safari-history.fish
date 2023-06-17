function safari-history
    echo '
         SELECT DISTINCT
             datetime(V.visit_time+978307200, "unixepoch", "localtime") AS datetime,
             I.url, V.title
         FROM history_visits V
         LEFT JOIN history_items I on V.history_item = I.id
         ORDER BY visit_time DESC
         LIMIT 5000; ' |\
    sqlite3 -header -csv ~/Library/Safari/History.db |\
    csview --style=none --no-headers |\
    fzf --layout=reverse-list --exact
end
