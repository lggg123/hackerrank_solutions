require 'time'

puts Time.strptime(gets.strip, "%H:%M:%S%p").strftime("%H:%M:%S")

# none of the code on the bottom needed 