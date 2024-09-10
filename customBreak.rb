# countdown
def pomodoro_time(minutes)
  seconds = minutes * 60

while seconds > 0
  minutes_left = seconds / 60
  seconds_left = seconds % 60
# Displays the time left in mm:ss format
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

#allows user to input custom timings
#the user flow
def countdown_timer
  puts "welcome to tracking time through tomatoes!"

  loop do
#user enters custom time
  puts "Enter desired tomato session duration (minutes only)"
    session_minutes = gets.chomp.to_i

    puts "Enter duration of your break (minutes only)"
    session_break = gets.chomp.to_i

 #user starts the programme here
  puts "type in 'start' or 'exit' to begin/end your session"
input = gets.chomp.downcase

if input == 'start'
    pomodoro_time(session_minutes)
    takeFive(session_break)
  elsif input == 'exit'
    puts "There will be no tomatoes today, sir! "
  break
  else
    puts "Error, input not found. Please enter 'start'/'exit, or-"
    end
  end
end

countdown_timer
