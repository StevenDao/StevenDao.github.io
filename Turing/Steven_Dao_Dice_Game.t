%Steven_Dao_Dice_Game_ver1 AA01
%Description:The Program Simulates
%            the Game of Craps.
%Dao, Steven
%November 22 2007
import GUI
%declares variables
var dice1, dice2, Roll, counter, pointvalue, font,font2 : int
%counter set to zero
counter := 0
%Welcome procedure
procedure welcome
    font := Font.New ("Arial:18:bold")
    Font.Draw ("Welcome to Craps! =D", 175, 375, font, black)
    font2 := Font.New ("Arial:18:bold")
    Font.Draw ("Try Your Luck!XP", 200, 350, font, 12)
end welcome
% Graphics for dice 1
procedure dice1_1
    drawbox (125, 150, 275, 300, black)
    drawfilloval (200, 225, 25, 25, 40)
end dice1_1
% Graphics for dice 2
procedure dice1_2
    drawbox (125, 150, 275, 300, black)
    drawfilloval (165, 263, 15, 15, 19)
    drawfilloval (235, 187, 15, 15, 19)
end dice1_2
% Graphics for dice 3
procedure dice1_3
    drawbox (125, 150, 275, 300, black)
    drawfilloval (165, 263, 15, 15, 19)
    drawfilloval (235, 187, 15, 15, 19)
    drawfilloval (200, 225, 15, 15, 19)
end dice1_3
% Graphics for dice 4
procedure dice1_4
    drawbox (125, 150, 275, 300, black)
    drawfilloval (165, 263, 15, 15, 19)
    drawfilloval (235, 263, 15, 15, 19)
    drawfilloval (165, 187, 15, 15, 19)
    drawfilloval (235, 187, 15, 15, 19)
end dice1_4
% Graphics for dice 5
procedure dice1_5
    drawbox (125, 150, 275, 300, black)
    drawfilloval (165, 263, 15, 15, 19)
    drawfilloval (235, 263, 15, 15, 19)
    drawfilloval (165, 187, 15, 15, 19)
    drawfilloval (235, 187, 15, 15, 19)
    drawfilloval (200, 225, 15, 15, 19)
end dice1_5
% Graphics for dice 6
procedure dice1_6
    drawbox (125, 150, 275, 300, black)
    drawfilloval (165, 263, 15, 15, 19)
    drawfilloval (235, 263, 15, 15, 19)
    drawfilloval (235, 225, 15, 15, 19)
    drawfilloval (165, 187, 15, 15, 19)
    drawfilloval (165, 225, 15, 15, 19)
    drawfilloval (235, 187, 15, 15, 19)
end dice1_6
% Graphics for dice 1
procedure dice2_1
    drawbox (320, 150, 470, 300, black)
    drawfilloval (395, 225, 25, 25, 40)
end dice2_1
% Graphics for dice 2
procedure dice2_2
    drawbox (320, 150, 470, 300, black)
    drawfilloval (355, 263, 15, 15, 19)
    drawfilloval (430, 187, 15, 15, 19)
end dice2_2
% Graphics for dice 3
procedure dice2_3
    drawbox (320, 150, 470, 300, black)
    drawfilloval (355, 263, 15, 15, 19)
    drawfilloval (430, 187, 15, 15, 19)
    drawfilloval (395, 225, 15, 15, 19)
end dice2_3
% Graphics for dice 4
procedure dice2_4
    drawbox (320, 150, 470, 300, black)
    drawfilloval (355, 263, 15, 15, 19)
    drawfilloval (430, 263, 15, 15, 19)
    drawfilloval (355, 187, 15, 15, 19)
    drawfilloval (430, 187, 15, 15, 19)
end dice2_4
% Graphics for dice 5
procedure dice2_5
    drawbox (320, 150, 470, 300, black)
    drawfilloval (355, 263, 15, 15, 19)
    drawfilloval (430, 263, 15, 15, 19)
    drawfilloval (355, 187, 15, 15, 19)
    drawfilloval (430, 187, 15, 15, 19)
    drawfilloval (395, 225, 15, 15, 19)
end dice2_5
% Graphics for dice 6
procedure dice2_6
    drawbox (320, 150, 470, 300, black)
    drawfilloval (355, 263, 15, 15, 19)
    drawfilloval (430, 263, 15, 15, 19)
    drawfilloval (430, 225, 15, 15, 19)
    drawfilloval (355, 187, 15, 15, 19)
    drawfilloval (355, 225, 15, 15, 19)
    drawfilloval (430, 187, 15, 15, 19)
end dice2_6
%procedure for the roll and game
procedure roll
    for i : 1 .. 20
	delay (50)
	cls
	randint (dice1, 1, 6)
	randint (dice2, 1, 6)
	%shows dice rolling
	case dice1 of
	    label 1 :
		welcome
		dice1_1
	    label 2 :
		welcome
		dice1_2
	    label 3 :
		welcome
		dice1_3
	    label 4 :
		welcome
		dice1_4
	    label 5 :
		welcome
		dice1_5
	    label 6 :
		welcome
		dice1_6
	end case
	%shows dice rolling
	case dice2 of
	    label 1 :
		welcome
		dice2_1
	    label 2 :
		welcome
		dice2_2
	    label 3 :
		welcome
		dice2_3
	    label 4 :
		welcome
		dice2_4
	    label 5 :
		welcome
		dice2_5
	    label 6 :
		welcome
		dice2_6
	end case
    end for
    counter := counter + 1
    Roll := dice1 + dice2
    locate (17, 30)
    put "You Rolled a ", Roll
    % Checks Win or lose or Set Point in 1st Round
    if counter = 1 then
	if Roll = 7 or Roll = 11 then
	    locate (18, 30)
	    put "You Rolled ", counter, " Time(s)"
	    locate (19, 30)
	    put "You Win!!! =D"
	    locate (20, 30)
	    put "Roll Again!"
	    counter := 0
	else
	    if Roll = 2 or Roll = 3 or Roll = 12 then
		locate (18, 30)
		put "You Rolled ", counter, " Time(s)"
		locate (19, 30)
		put "You Lose! D="
		locate (20, 30)
		put "Please Roll Again!"
		counter := 0
	    else
		if Roll = 4 or Roll = 5 or Roll = 6 or Roll = 8 or Roll = 9 or Roll = 10 then
		    locate (18, 30)
		    put "Please Roll Again"
		    locate (19, 30)
		    put "Point is Set to ", Roll
		    pointvalue := Roll
		end if
	    end if
	end if
    end if
    %Checks if Win or Lose After the 1st Round When the Point is Set
    if counter > 1 then
	if Roll = pointvalue then
	    locate (18, 30)
	    put "You Rolled ", counter, " Time(s)"
	    locate (19, 30)
	    put "You Win!!! =D"
	    locate (20, 30)
	    put "Roll Again!"
	    counter := 0
	else
	    if Roll = 7 then
		locate (18, 30)
		put "You Rolled ", counter, " Time(s)"
		locate (19, 30)
		put "You Lose! D="
		locate (20, 30)
		put "You Need to Roll a ", pointvalue, " to Win!"
		locate (21, 30)
		put "Please Roll Again!"
		counter:=0
	    else
		locate (18, 30)
		put "You Rolled ", counter, " Time(s)"
		locate (19, 30)
		put "Please Roll Again!"
		locate (20, 30)
		put "You Need to Roll a ", pointvalue, " to Win!"
	    end if
	end if
    end if
    GUI.Refresh
end roll
cls
%Rules For Craps
font := Font.New ("Arial:18:bold")
Font.Draw ("Welcome to the Game Craps! =D", 150, 375, font, black)
locate (4, 15)
put "On the First Round of the Game, if a 7 or 11 is Rolled"
locate (6, 36)
put "You Win!=D"
locate (8, 30)
put "If 2, 3, or 12 is Rolled"
locate (10, 36)
put "You Lose!D="
locate (12, 24)
put "If Any of the Other Numbers are Rolled"
locate (14, 22)
put "You Need to Roll the Same Number to Win!=D"
locate (16, 21)
put "But This Time, If You Roll a 7, You Lose!D="
locate (18, 10)
put "If You Win a New Round Begins and Becomes the First Round Again."
locate (20, 22)
put "Press the Roll Button to Roll the dice!"
%Button
var craps : int := GUI.CreateButtonFull (200, 10, 0, "Roll",
    roll, 0, '^D', true)
var quitBtn : int := GUI.CreateButton (350, 10, 0, "Quit", GUI.Quit)
loop
    exit when GUI.ProcessEvent
end loop
