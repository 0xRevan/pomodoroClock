# Method to run the Pomodoro timer for a given number of minutes
def pomodoro_time(minutes)
  # Convert minutes to seconds for the countdown
  seconds = minutes * 60

  # Start the countdown loop
  while seconds > 0
    # Calculate remaining minutes and seconds
    minutes_left = seconds / 60
    seconds_left = seconds % 60

    # Display the time left in mm:ss format, overwriting the same line
    print "\r#{format('%02d', minutes_left)}:#{format('%02d', seconds_left)}"
    # Pause for one second
    sleep(1)
    # Decrease the seconds counter by one
    seconds -= 1
  end

  # Notify the user when the timer is up
  puts "\nTime is up! Every Second Counts, Chef."
end

# Method to run the break timer for a given number of minutes
def take_five(minutes)
  # Convert minutes to seconds for the countdown
  seconds = minutes * 60

  # Start the countdown loop
  while seconds > 0
    # Calculate remaining minutes and seconds
    minutes_left = seconds / 60
    seconds_left = seconds % 60

    # Display the time left in mm:ss format, overwriting the same line
    print "\r#{format('%02d', minutes_left)}:#{format('%02d', seconds_left)}"
    # Pause for one second
    sleep(1)
    # Decrease the seconds counter by one
    seconds -= 1
  end
end

# Main method to control the flow of the Pomodoro sessions
def countdown_timer
  # Greet the user
  puts "Welcome to tracking time through tomatoes!"

  # Initialize counters for sessions and breaks
  pomodoro_count = 0
  take_five_count = 0

  # Start an infinite loop to allow multiple sessions
  loop do
    # Prompt the user to enter the desired session duration
    puts "Enter desired tomato session duration (minutes only):"
    session_minutes = gets.chomp.to_i

    # Prompt the user to enter the desired break duration
    puts "Enter duration of your break (minutes only):"
    session_break = gets.chomp.to_i

    # Ask the user to start or exit the session
    puts "Type 'start' to begin or 'exit' to end your session:"
    input = gets.chomp.downcase

    # Check the user's input
    if input == 'start'
      # Start the Pomodoro timer
      pomodoro_time(session_minutes)
      # Increment the Pomodoro session counter
      pomodoro_count += 1

      # Start the break timer
      take_five(session_break)
      # Increment the break counter
      take_five_count += 1

    elsif input == 'exit'
      # Display the session summary
      puts "\n-- Session Summary --"
      puts "Total completed sessions: #{pomodoro_count}"
      puts "Total completed breaks: #{take_five_count}"
      puts "There will be no tomatoes today, sir!"
      # Exit the loop to end the program
      break

    else
      # Handle invalid input
      puts "Error: Input not recognized. Please enter 'start' or 'exit'."
    end
  end
end

# Start the countdown timer program. I call. It barks.
countdown_timer
