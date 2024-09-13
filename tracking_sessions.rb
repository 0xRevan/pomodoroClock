#simple tracking feature
if input == 'start'
  pomodoro_time(session_minutes)

  #adds 1 to pomodoro count
    pomodoro_count +=1
    puts "\nThat's one tomatoe session completed #{pomodoro_count}"

  take_five(session_break)
    take_five_count += 1
    puts "\nYerr a lazy one #{take_five_count}"


elsif input == 'exit'
  puts "There will be no tomatoes today, sir! "
break

else
  puts "Error, input not found. Please enter 'start'/'exit, or-"
  end
end
