# from time import sleep

import time
from datetime import date, timedelta
import datetime

# def fibonacci_series(n):
#     series = [0, 1]
#     i = 2
#     while series[i-1] + series[i-2] <= n:
#         series.append(series[i-1] + series[i-2])
#         i += 1
#     return series
#
#
# fibonacci_series(54)
#
# name = "Chaz"
# print(f"DEBUGPRINT[1]: main.py:15: name={name}")
#
# user = 'hello'
#
# mail = f"Some {user}"
# sleep(4)

# d = "1700445600000"  # 1700798400000
# d = int(d)
# d = date.fromtimestamp(d / 1000)
# print(d)
#
# today = date.today()
# iso_date_str = today.isoformat()
# print(f"DEBUGPRINT[4]: main.py:30: iso_date_str={iso_date_str}")
# print(f"DEBUGPRINT[2]: main.py:29: today={today}")
# week_from_today = today + timedelta(days=7)
# print(f"DEBUGPRINT[3]: main.py:31: week_from_today={week_from_today}")
#
# print("Hello")

# unix_milliseconds = int(time.time() * 1000)
# print(unix_milliseconds)

# Get the current date
current_date = datetime.datetime.now()

# Calculate the start of last week
start_of_last_week = current_date - datetime.timedelta(days=current_date.weekday() + 7)

# Set the time to 00:00:00
start_of_last_week = start_of_last_week.replace(hour=0, minute=0, second=0, microsecond=0)

# Calculate the end of last week
end_of_last_week = start_of_last_week + datetime.timedelta(days=6, hours=23, minutes=59, seconds=59)

# Convert the dates to Unix timestamps in milliseconds
start_of_last_week_unix_milliseconds = int(start_of_last_week.timestamp() * 1000)
end_of_last_week_unix_milliseconds = int(end_of_last_week.timestamp() * 1000)

print("Start of last week:", start_of_last_week_unix_milliseconds)
print("End of last week:", end_of_last_week_unix_milliseconds)
