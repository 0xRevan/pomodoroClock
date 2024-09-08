# countdown
def pomodoro_time(minutes)
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

# break timer
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


#the user flow
def start_timer
  puts "welcome to tracking time through tomatoes!"
loop do
  puts "type in 'start' or 'exit' to begin/end your session"
    input = gets.chomp.downcase
  if input == 'start'
    pomodoro_time(25)
      takeFive(5)
  elsif input == 'exit'
    puts "Cheers for now!"
    break
  else
    puts "Error, input not found. Please enter 'start'/'exit', or fekoff"
  end
end
end

#calls and start the timer
start_timer
