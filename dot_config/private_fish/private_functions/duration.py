from datetime import datetime
from fileinput import input
from re import search


duration = 0
for line in input():
    if search(r'^202\d{5}:', line):
        duration = 0
    elif match := search(r'^(\d\d:\d\d)\s+(\d\d:\d\d)?', line):
        start, stop = match.groups()
        hour, minute = map(int, start.split(':'))
        start = hour * 60 + minute
        if stop:
            hour, minute = map(int, stop.split(':'))
        else:
            now = datetime.now()
            hour, minute = now.hour, now.minute
        stop = hour * 60 + minute
        duration += stop - start
print('{}:{:02d}'.format(duration // 60, duration % 60))
