# Rock, Paper, Scissors
wins=0
losses=0
ties=0

while (true)
  puts "Your move: rock, paper, or scissors?"

  user_throw=gets.chomp.downcase

  options =["rock","paper","scissors"]
  computer_roll=rand(0..2)

  if user_throw == "quit"
    break

  elsif user_throw != "paper" && user_throw != "rock" && user_throw != "scissors"
    puts "Not a valid action. You probably spelled scissors wrong."

  else
    puts "You chose #{user_throw}!"
    computer_roll=options[rand(0..2)]
    puts "Computer threw #{computer_roll}"
    if (user_throw=="rock")
      if (computer_roll=="scissors")
        puts "You win!"
        wins+=1
      elsif computer_roll=="paper"
        puts "You lose!"
        losses+=1
      else
        puts "You tie!"
        ties+=1
      end
    elsif (user_throw=="paper")
      if (computer_roll=="scissors")
        puts "You lose!"
        losses+=1
      elsif computer_roll=="paper"
        puts "You tie!"
        ties+=1
      else
        puts "You win!"
        wins+=1
      end
    elsif (user_throw=="scissors")
      if (computer_roll=="scissors")
        puts "You tie!"
        ties+=1
      elsif computer_roll=="paper"
        puts "You win!"
        wins+=1
      else
        puts "You lose!"
        losses+=1
      end
    end
    puts "Record:"
    puts "Wins: #{wins}"
    puts "Losses: #{losses}"
    puts "Ties: #{ties}"
  end
end
