#simple tracking feature
if input == 'start'
  pomodoro_time(session_minutes)

  #adds 1 to pomodoro count
    pomodoro_count +=1

  take_five(session_break)
    take_five_count += 1


elsif input == 'exit'
  puts "\n-- Session Summary --"
    puts "total completed sessions: #{pomodoro_count}"
    puts "total completed breaks: #{take_five_count}"
      puts "There will be no tomatoes today, sir! "
break

else
  puts "Error, input not found. Please enter 'start'/'exit, or-"
  end
end
