#!/bin/bash
### Description:
### Written by Tory H. Davenport, 2018

# Initialize a few variables
gender=undefined
age=0
name=undefined

# Initialize 5 backpack carry slots
item1="empty"
item2="empty"
item3="empty"
item4="empty"
item5="empty"
# Main menu function
main_menu() {
	clear
	echo "WELCOME TO PO-KAY-MON PURPLE EDITION!! ----(DEMO)----"
	sleep 1
	# Set Menu Choice to 0
	menuChoice=0
	# Print menu
	echo "==========MAIN MENU=========="
	echo "Option 1: Play Game"
	echo "Option 2: Quit Game"
	while [ menuChoice=0 ]; do
		read -p "Choice Number: " menuChoice
		
		case "$menuChoice" in
		1)
			echo "Starting Game!"
			sleep 2
			return
			;;
		2)	echo "Now exiting"
			sleep 1
			exit 
			;;
		*)	echo "Try again."
			choice=0
		  	;;
		
		esac
	done	
}
# Game intro function
play_intro() {
	# Opening Dialog/collect player information and store in variables
	clear
	echo "Professor Bob:
	      Welcome to the wonderful world of Po-kay-mon!"
	echo
	read -p "Would you like to be a boy, or a girl? (Type response): " gender
	sleep 1
	echo
	read -p "Great!, You are a $gender!. Whats your name? (Type response): " name
	sleep 1
	echo
	read -p "Pleasure to meet you, $name! Can you tell me how old you are? (Type response): " age
	sleep 2
	echo
	echo "Excellent! You are $age years old!"
	echo
	sleep 2

	# Introduce Professor BOB
	echo "Professor Bob: My name is Professor Bob! I am a Po-kay-mon resercher! I have been studying these
	      magical creatures for my entire life!"
	sleep 3 
	echo
	echo "Professor Bob: Your magical Po-kay-mon mystery is about to unfold!"
	sleep 3
	read -p "Press ENTER to continue...."
	clear
}
# Bedroom scene function
play_bedroom() {
	# Start bedroom scene
	clear
	echo "You wake up in your bedroom and notice that you must have been dreaming..."
	sleep 2
	echo
	echo "In the bedroom theres a dresser, a bed and a cool Po-kay-mon poster."
	sleep 2
	echo
	echo "You can smell Mom cooking downstairs as the scent wafts in from under the door."
	sleep 2 
	# Set choice to 0
	choice=0
	# While choice is = 0, create menu and display objects to interact with.
	while [ $choice=0 ]; do
	# Promt the user..
	read -p "What object would you like to interact with? 
		1: Bed
		2: Dresser
		3: Go downstairs
		4: Po-kay-mon poster
	
		Choice Number: " choice

	# Check which choice the player chose and display appropriate scenario
	case "$choice" in
	# Select bed
	1)
		echo "The bed is messy"
		sleep 1
		echo "I've made the bed!"
		echo "Time to take a nap!"
		sleep 3
		echo "You wake up feeling refreshed..."
		sleep 2
		clear
		choice=0
		;;
	# Select dresser
	2)
		echo "Nothing but clothes in here!"
		sleep 2
		clear
		choice=0
		;;
	# Move on to next area
	3)
		echo		
		echo "Time to talk to Mom!"
		sleep 2
		clear
		sleep 2
		return
		;;
	# Foreshadowing...
	4)	
		echo "I want to be the greatest Po-kay-mon trainer in the world someday! Just like my Father was..."
		sleep 2
		clear
		choice=0	
		;;
	# Catchall for other keys pressed
	*)
		echo "You did not enter a correct choice, try again."
		sleep 2
		clear
		choice=0
		;;
	esac
	done
}
# Talking to mom scene function
play_mom () {
	clear
	echo " Mom:  Rise and Shine $name!"
	echo "       The professor called!"
	echo "       He asked if you could stop by"
	echo "       today! Something about a Po-kay-"
	echo "       -mon. Go talk to him!"
        echo
	sleep 1
	# Print menu
	menu1Choice=0
	while [ menu1Choice=0 ]; do
		read -p "What would you like to do? 
		      
		      Option 1: Stay inside
		      Option 2: Go back upstairs
		      Option 3: Go see Professor Bob!
			
		      Choice Number: " menu1Choice
		# Conditions and outcomes
		case "$menu1Choice" in
		1)
		  echo "The food smells amazing."
		  echo "$name eats a plate."
		  sleep 1
		  echo "I should really see the Professor..."
		  sleep 2
		  clear
		  menu1Choice=0
		  ;;
		2)
		  echo "You try to go back upstairs...."
		  sleep 1
		  echo "Mom:WAIT!!" 
		  echo "$name, you should really see the Professor!"
		  sleep 2
		  clear
		  menuChoice=0
		  ;;
		3)
    	          echo " Mom: $name, WAIT!"           
		  sleep 1
		  echo " Take this!"     
		  echo " $name has recieved the BOOKBAG!"
		  echo
		  sleep 2
		  echo " Mom: $name, use this to store items you find"
		  echo " along the way! Stay safe out there!"
		  echo
		  sleep 5
	          clear
	          return
		  ;;
		*) 
                  echo "Incorrect choice! Try again"
	          menu1Choice=0
		  ;;
         	  esac
	done
}
# Town scene function
play_town () {
	clear
	# Starting dialog.. Enter Carl.
	echo "You go outside to find the Professors building and someone comes running up to you!"
	sleep 2
	echo
	echo "Carl: HI $name! My name is Carl! I heard you moved into town recently and I wanted to come say hi!"
	sleep 1
	echo
	echo "Carl: OH? You're looking for Professor Bob? I can show you where his office is! He works in the towns Po-kay-mon lab!"
	sleep 2
	echo
	echo "Carl: THIS WAY!"
	echo
	# Create a menu to talk to Carl
	# While menu selector is null (0)
	menu2Choice=0
	while [ $menu2Choice=0 ]; do
	
	# Prompt choices
	read -p "Follow Carl? (Type 'y' or 'n'): " menu4Choice
	# Logic for choices
	case "$menu4Choice" in
	# Choose yes, enter Professor Bob's lab.
	"y"|"Y")
		clear
		return
		;;
	# Choose no, get a map to find it later.	
	"n"|"N") 
		clear
		echo "Carl: Aw okay maybe later, hey, take this MAP!"
	        sleep 1
		echo
		echo "YOU HAVE RECIEVED THE MAP!"
	        echo
		sleep 2
		echo "$name places the MAP in the BACKPACK!"
		echo
		# Create MAP item
		item1="MAP"
		sleep 1
		# Create description for the item
		item1Description="This is the local town map!"
		sleep 1
		# Offer to view item in the pack/ Introduce pack feature
		read -p "Would you like to open the BACKPACK? ('y' or 'n') " openPack
		
		if [ "$openPack" = "y" ]; then
			echo
			# Call function to open / interact with the pack
			open_pack
		
			# If no, exit the pack and return to Carl.
		elif [ "$openPack" = "n" ]; then
			echo
			continue		
		else
			echo "That's not an option! Try again!"
			sleep
			continue
		fi
		;;
	*)# Extra logic to catch input other than 'y' or 'n'
	echo "Carl: Huh? What did you say? Are you coming or not?"
	menu2Choice=0
	clear
	;;
	esac
done
}
# Function to handle player interation with the backpack to store/examine items
open_pack () {
	clear
	# While the backpack is open..
	counter=0
	open=0
	while [ $open=0 ]; do
		echo "The bag contains the following items: "
		# Iterate over each item and store its value
		for items in $item1 $item2 $item3 $item4 $item5
		do   
			# Print each item and append an item number
	 	echo "$((counter=counter+1))":" $items"
		done
		echo

	read -p "Press Enter to exit the pack"
	return
	done
}

play_game () {
	echo "YOU HAVE FINISHED THE DEMO!"

	# While gamePlay is on...
	while  [ $gamePlay=1 ]; do
	echo "Starting game..."
	
	# PLAY GAME!
	main_menu
	# Begin Game Sequence
	play_intro # After this ends, goto bedroom...
	play_bedroom # Upon selection, loop ends and player goes downstairs...
	play_mom # After talking to mom, player must talk to professor...
	play_town # Go outside to find the professor and find Carl...
	sleep 2
	
	# ending and credits	
	echo "THANK YOU FOR PLAYING THE CHOOSE YOUR OWN ADVENTURE - PO-KAY-MON GAME!"
	sleep 1
	echo
	echo "Would you like to view the credits?"
	echo "1: Yes"
	echo "2: No (This choice will end the demo)"
	echo
	read -p "Well,?(Enter choice number): " gamePlay
	if [ "$gamePlay" = "1" ]; then
		echo "========Credits========="
		sleep 1
		echo "Thank you Jonathan for teaching me everything you have during my time here at FLCC."
		echo "I look forward to working through your Cybersecurity certification at RIT EdX in 2019,"
		echo "and to keeping in touch over Linkedin. I do intend to take your IPv6 in the summer as well!"
		echo "Also, keep up the great work that you do! I appreciate doing what your doing for those of us who want to" 
                echo " learn technology and be successful in the feild. Very inspiring! -Tory "
		sleep 1
		echo
		echo
		echo "Would you like to play again?"
		echo "1: Yes"
		echo "2: No (This choice will end the demo)"
		read -p "Choose...(Enter choice number):" endGame
		if [ "$endGame"="1" ]; then
			continue
        	else
			exit
		fi
	else 
		exit
	fi
done
}

# Start Game Sequence
play_game
