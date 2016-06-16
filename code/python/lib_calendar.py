import pprint
import calendar

# print(calendar.calendar(2016, 3))

# print(calendar.TextCalendar().formatmonth(2016,6, 3))
# print(calendar.TextCalendar().formatmonth(2016,6))
# print(calendar.TextCalendar().formatyear(2016, 3, 1, 4, 2))

# print(calendar.HTMLCalendar().formatyear(2016))
print(calendar.HTMLCalendar().formatyearpage(2016, 4, "./cal.css"))
