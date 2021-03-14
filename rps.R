# let's play rock, paper, scissors with R.

library(magrittr)


play <- function() {
  # let R play:
  R <- sample(x = c("rock", "paper", "scissors"), size = 1)
  
  # your turn to play:
  cat("\nRock, Paper or Scissors?\n")
  you <- readline() %>% tolower()
  
  # if you play anything else that is not rock, paper, scissors throw an error.
  if (!(you %in% c("rock", "paper", "scissors"))) {
    stop("You must play either rock, paper or scissors. Just the rules.")
  }
  
  # if you and R made the same choice, no winner. Prompt another round.
  if (identical(R, you)) {
    cat("\nWe both played ", R, ". No winner this time.\n")
    
  }else{
    # when do you win? If:
    # 1. you == rock & R == scissors, Or;
    # 2. you == paper & R == rock, Or;
    # 3. you == scissors & R == paper
    # else you lose!
    
    # check conditions:
    c1 <- (you == "rock") & (R == "scissors")
    c2 <- (you == "paper") & (R == "rock")
    c3 <- (you == "scissors") & (R == "paper")
    
    # combining all those:
    c4 <- any(c1, c2, c3)
    
    # decision:
    if (c4) {
      cat("\nYou win this time, bravo! I played ", R, " :(\n")
    }else{
      cat("\nI win.", "I played ", R,  ". Wish you luck next time.\n")
    }
  }
  
  # prompt whether to continue playing or exit game.
  cat("\nAnother round maybe?\n[y/n]")
  reply <- readline() %>% tolower()
  yes <- "y"
  
  
  # if reply is yes, another round:
  if (identical(yes, reply)) {
    Recall()
  }else{
    # exit game
    cat("\nSad to see you go buddy :( \n\nHave a good one!\n\n")
    return(1)
  }
}

# test if that works:
play()
paper
y
rock
y
scissors
n

# and it does!
