from datetime import datetime
import sys


time_format = '%I:%M %p'

# start_time = input("Enter start time in HH:MM AM/PM format: ")
# end_time = input("Enter end time in HH:MM AM/PM format: ")
start_time = sys.argv[1]
end_time = sys.argv[2]

# convert the entered times to datetime objects
start_time = datetime.strptime(start_time, time_format)
end_time = datetime.strptime(end_time, time_format)

# calculate the duration between the two times
duration = end_time - start_time

print(f"Duration: {duration}")

