#the user flow
def countdown_timer
  puts "welcome to tracking time through tomatoes!"
loop do
  puts "type in 'start' or 'exit' to begin/end your session"
input = gets.chomp.downcase
  if input == 'start'
    countdown_timer
      takeFive
  elsif input == 'exit'
    puts "Cheers for now!"
  break
  else
    puts "Error, input not found. Please enter 'start'/'exit, or fekoff"
  end
end
end

countdown_timer
