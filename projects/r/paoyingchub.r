# data
moves <- c("rock", "paper", "scissors")
# score_board
win <- 0
lose <- 0
tie <- 0
# create function
play_game <- function() {
	print("Let's play Rock, Paper, Scissors!")
	print("What's your name?: ")
	player <- toupper(readLines("stdin", n=1))
	print(paste("Are you ready?", player))
# condition loop
  while(TRUE) {
    print("Enter you move! (rock, paper, scissors)")
    print("Or type 'quit' to end this game")
    player_move = tolower(readLines("stdin", n=1))
    bot_move <- sample(moves, 1)
      if (player_move == "quit") {
        print(paste("Scoreboard: WIN", win, "LOSE", lose, "TIE", tie))
				print("See you next time!")
        break
      } 
		print(paste(player, " moved: ", player_move))
    print(paste("BOT moved: ", bot_move))

			if (player_move == bot_move) {
        print("Tie!")
        tie <- tie + 1
        } else if (player_move == "rock" & bot_move == "scissors") {
        print("You win!")
        win <- win + 1
        } else if (player_move == "paper" & bot_move == "rock") {
        print("You win!")
        win <- win + 1
        } else if (player_move == "scissors" & bot_move == "paper") {
        print("You win!")
        win <- win + 1
        } else {
        print("You lose!")
        lose <- lose + 1
        }
      }
  }
play_game()
