# let's play rock, paper, scissors with R.

library(magrittr)


play <- function() {
  # let R play:
  R <- sample(x = c("rock", "paper", "scissors"), size = 1)
  
  # your turn to play:
  cat("\nRock, Paper or Scissors?\n")
  you <- readline() %>% tolower()
  
  # if you is not rock, paper, scissors throw an error.
  if (!(you %in% c("rock", "paper", "scissors"))) {
    stop("You must play either rock, paper or scissors. Just the rules.")
  }
  
  # if you and R made the same choice, no winner. Prompt another round.
  if (identical(R, you)) {
    cat("\nWe both played ", R, ". No winner this round.\n")
    
  }else{
    # if you play rock:
    if (you == "rock") {
      # if R plays scissors, you win.
      if (R == "scissors") {
        cat("\nYou win this time, bravo! I played ", R, " :(\n")
      }else{
        # else R wins.
        cat("\nI win.", "I chose ", R,  ". Wish you luck next time.\n")
      }
    }
    
    # if you play scissors:
    if (you == "scissors") {
      # if R plays paper, you 
      if (R == "paper") {
        cat("\nYou win this time, bravo! I played ", R, " :(\n")
      }else{
        # else R wins.
        cat("\nI win.", "I chose ", R,  ". Wish you luck next time.\n")
      }
    }
    
    # if you play paper:
    if (you == "paper") {
      # if R plays rock, you win.
      if (R == "rock") {
        cat("\nYou win this time, bravo! I played ", R, " :(\n")
      }else{
        # else R wins.
        cat("\nI win.", "I chose ", R,  ". Wish you luck next time.\n")
      }
    }
    
  }
  
  
  # prompt whether to continue playing or exit game.
  cat("Another round maybe?\n[y/n]")
  reply <- readline() %>% tolower()
  yes <- "y"
  
  
  # if reply is yes, another round:
  if (identical(yes, reply)) {
    Recall()
  }else{
    # exit game
    cat("\nSad to see you go buddy :( \nHave a good one!\n\n")
    return(1)
  }
}


# Let's test that:
play()
paper
y
rock
y
scissors
n


# Seems good!
