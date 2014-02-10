%Guess Steven Dao.t
%Steven Dao
%January, 18, 2007
var number, tries, Tries, guess, c : int
var ans : char
randint (number, 1, 7)
tries := 0
procedure Begin
    cls
    colour (7)
    %Greets the User and gives instructions
    put "Welcome to the Guessing Game"
    put "You will have four tries to guess the right number between 1 and 7"
    put "Each time you get an incorrect guess"
    put "there will be blue squares marking your tries"
    loop
	put "Pick a number between 1 and 7"
	get guess
	%the process which the program goes though to see in the # guessed is the same as # generated
	if guess = number then
	    cls
	    locate (13, 20)
	    %Flashing You win process
	    for j : 1 .. 10
		cls
		randint (c, 1, 10)
		colour (c)
		put "Congrats you guessed the right number, You Win!"
		tries := 0
		delay (100)
	    end for
	    delay (1000)
	    Begin
	else
	    if guess > number then
		cls
		tries := tries + 1
		Tries := 4 - tries
		put "Please try again!"
		put "You have guessed ", tries, " time(s)"
		put "You have ", Tries, " left"
		%the Process used to draw squares depending on how many tries
		if tries = 1 then
		    drawfillbox (10, 10, 60, 60, 9)
		else
		    if tries = 2 then
			drawfillbox (10, 10, 60, 60, 9)
			drawfillbox (70, 10, 120, 60, 9)
		    else
			if tries = 3 then
			    drawfillbox (10, 10, 60, 60, 9)
			    drawfillbox (70, 10, 120, 60, 9)
			    drawfillbox (130, 10, 180, 60, 9)
			else
			    if tries = 4 then
				drawfillbox (10, 10, 60, 60, 9)
				drawfillbox (70, 10, 120, 60, 9)
				drawfillbox (130, 10, 180, 60, 9)
				drawfillbox (190, 10, 240, 60, 9)
			    end if
			end if
		    end if
		end if
	    else
		if guess < number then
		    cls
		    tries := tries + 1
		    Tries := 4 - tries
		    put "Please try again!"
		    put "You have guessed ", tries, " time(s)"
		    put "You have ", Tries, " left"
		    %the Process used to draw squares depending on how many tries
		    if tries = 1 then
			drawfillbox (10, 10, 60, 60, 9)
		    else
			if tries = 2 then
			    drawfillbox (10, 10, 60, 60, 9)
			    drawfillbox (70, 10, 120, 60, 9)
			else
			    if tries = 3 then
				drawfillbox (10, 10, 60, 60, 9)
				drawfillbox (70, 10, 120, 60, 9)
				drawfillbox (130, 10, 180, 60, 9)
			    else
				if tries = 4 then
				    drawfillbox (10, 10, 60, 60, 9)
				    drawfillbox (70, 10, 120, 60, 9)
				    drawfillbox (130, 10, 180, 60, 9)
				    drawfillbox (190, 10, 240, 60, 9)
				end if
			    end if
			end if
		    end if
		end if
	    end if
	end if
	%the process to see in the 4 tries is up and promts them to see if User wants to play again
	if tries = 4 then
	    put "Sorry you lose, Do you want to play again?(y/n)"
	    get ans
	    %To see if User says yes or no
	    case ans of
		label "y" :
		    cls
		    tries := 0
		    Begin
		label "n" :
		    put "Bye, Hope you had fun! Play again next time!"
		label :
		    put "Invalid Input"
	    end case
	end if
    end loop
end Begin
Begin
