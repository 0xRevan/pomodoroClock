# countdown
def countdown_timer(minutes)
  seconds = minutes * 60

while seconds > 0
  minutes_left = seconds / 60
  seconds_left = seconds % 60
# Display the time left in mm:ss format
  print "\r#{format('%02d', minutes_left)}:#{format('%02d', seconds_left)}"
  sleep(1)
  seconds -= 1
end

puts "\nTime is up! Every Second Counts, Chef."

end

#test 25 minute timer

countdown_timer(0.5)
