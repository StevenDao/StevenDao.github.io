%Steven_Dao_Decision1_ver1 AA01
%Description: Ask you to input to a shape and co-ordinates, then the program
%             then the program will draw your shape on the screen.
%Dao, Steven
%October 22 2007
var shape : string %declaring variables
var shape_colour, x1, x2, y1, y2 : int %declaring variables
loop %Start if loop
    put "Please chose one of the following shapes" %display message for shape
    put "(NOTE:PLEASE ENTER EXACTLY WHAT CHOISE IS SHOWN OR IT WILL NOT WORK)"
    put "rectangle, line, circle, star or mapleleaf" %display message for shape
    get shape %get the shape user input
    put "Enter the number that corresponds with the colour in the brackets" %display message on how to input colour
    put "Please select one of the following colours" %display message for colour
    put "red(12),blue(32),green (10),yellow(44),black(7),orange(42)" %display message selection of colour
    get shape_colour %got the colour user input
    case shape of %case statment
	label "rectangle" : %Checks if input "shape was
	    put "Please enter the starting point of the rectangle" %display message asks for 1st parameters
	    put "Please enter it as a co-ordinates with no comma Ex. 100 100" %display message on how to input parameters
	    get x1, y1 %get co-ordinate inputs
	    put "Please enter the ending point of the rectangle" %display message asks for 2nd parameters
	    put "Please enter it as a co-ordinates with no comma Ex. 100 100" %display message on how to input parameters
	    get x2, y2 %get co-ordinate inputs
	    cls  %Clear Screen
	    drawbox (x1, y1, x2, y2, shape_colour) %draws shape
	    drawfill (x1 + 1, y1 + 1, shape_colour, shape_colour) %fills in shape with colour
	label "line" : %Checks if input "shape" was line
	    put "Please enter the starting point of the line" %display message asks for 1st parameters
	    put "Please enter it as a co-ordinates with no comma Ex. 100 100" %display message on how to input parameters
	    get x1, y1 %get co-ordinate inputs
	    put "Please enter the ending point of the line" %display message asks for 2nd parameters
	    put "Please enter it as a co-ordinates with no comma Ex. 100 100" %display message on how to input parameters
	    get x2, y2 %get co-ordinate inputs
	    cls %Clear Screen
	    drawline (x1, y1, x2, y2, shape_colour) %draws shape
	label "circle" : %Checks if input "shape" was circle
	    put "Please enter the starting point of the circle" % display message asks for 1st parameters
	    put "Please enter it as a co-ordinates with no comma Ex. 100 100" %display message on how to input parameters
	    get x1, y1 %get co-ordinate inputs
	    put "Please enter the the size (width and length) of the circle" % display message asks for 2nd parameters
	    put "Please enter how big the circle will be (just one number)" %display message on how to input parameters
	    get x2 %get co-ordinate inputs
	    cls %Clear Screen
	    drawoval (x1, y1, x2, x2, shape_colour) %draws shape
	    drawfill (x1, y1, shape_colour, shape_colour) %fills in shape with colour
	label "star" : %Checks if input "shape" was star
	    put "Please enter the starting point of the star" % display message asks for 1st parameters
	    put "Please enter it as a co-ordinates with no comma Ex. 100 100" %display message on how to input parameters
	    get x1, y1 %get co-ordinate inputs
	    put "Please enter the size (width and length) of the star" % display message asks for 2nd parameters
	    put "Please enter it as a co-ordinates with no comma Ex. 100 100" %display message on how to input parameters
	    get x2, y2 %get co-ordinate inputs
	    cls %Clear Screen
	    drawstar (x1, y1, x2, y2, shape_colour) %draws shape
	    drawfillstar (x1, y1, x2, y2, shape_colour) %fills in shape with colour
	label "mapleleaf" : %Checks if input "shape" was mapleleaf
	    put "Please enter the starting point of the maple leaf" % display message asks for 1st parameters
	    put "Please enter it as a co-ordinates with no comma Ex. 100 100" %display message on how to input parameters
	    get x1, y1 %get co-ordinate inputs
	    put "Please enter the size (width and length) of the maple leaf" % display message asks for 2nd parameters
	    put "Please enter it as a co-ordinates with no comma Ex. 100 100" %display message on how to input parameters
	    get x2, y2 %get co-ordinate inputs
	    drawmapleleaf (x1, y1, x2, y2, shape_colour) %draws shape
	    drawfillmapleleaf (x1, y1, x2, y2, shape_colour) %fills in shape with colour
	label :
	    cls %Clear Screen
	    var text : int %variable declared
	    for x : 1 .. 20 %number of times loops
		randint (text, 0, maxcolor) %changes text variable from 1 to 255
		colour (text) %changes coulor of text
		locate (12, 35) %locates points on screen
		put "INVALID INPUT" %display error message
		delay (100) %delay
	    end for %end for statments
    end case %end case statments
    delay (3000) %delay
    cls %clear screen
    colour (black) %changes text back to black
end loop %end loop
