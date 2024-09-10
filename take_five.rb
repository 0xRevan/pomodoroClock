#takes a break equal to the time provided

# countdown
def takeFive(minutes)
  seconds = minutes * 60

while seconds > 0
  minutes_left = seconds / 60
  seconds_left = seconds % 60
# Display the time left in mm:ss format
  print "\r#{format('%02d', minutes_left)}:#{format('%02d', seconds_left)}"
  sleep(1)
  seconds -= 1
end

puts "\nTake give, chefs!."

end
