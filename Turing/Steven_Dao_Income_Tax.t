%Steven_Dao_Decision3_ver1 AA01
%Description:This program helps to find the taxes
%            you need to pay for oyu total income.
%Dao, Steven
%October 14 2007
var income, total, tax, tax2, tax3, tax4 : real %declares variables
const tax_rate1 := 37178 * 0.155 %declares "tax_rate1" is constantant of 37178 * 0.155
const tax_rate2 := 37179 * 0.22 %declares "tax_rate2" is constantant of 37179 * 0.22
const tax_rate3 := 46530 * 0.26 %declares "tax_rate3" is constantant of 46530 * 0.26
loop %start of loop
    put "Enter your yearly income:" .. %display message Enter your yearly income:
    get income %get input for "income"
    if income <= 37178 then %if "income" is less than or equal to 37178 then
	tax := income * 0.155 %"tax" equal "income" times 0.155
	put "Your yearly income is ", income %display message Your yearly income is "income"
	put "The total amount tax you need to pay is ", tax %display message The total amount tax you need to pay is "tax"
	put "Your remaining income is ",income - tax
    else %anything else then
	if income > 37178 and income <= 74357 then %if "income" is greater than 37178 and less than or equal to 74357 then
	    tax2 := (income - 37178) * 0.22 + tax_rate1 %tax2 equals ("income" - 37178) * 0.22 + "tax_rate1"
	    put "Your yearly income is ", income %display message Your yearly income is "income"
	    put "The first tax rate is 15%,which is ", tax_rate1 %display message The first tax rate is 15%,which is  "tax_rate1"
	    put "The second tax rate is 22%,which is ", (income - 37178) * 0.22 %display message The second tax rate is 22%,which is ("income" - 37178) * 0.22
	    put "The total amount tax you need to pay is ", tax2 %display message The total amount tax you need to pay is "tax2"
	    put "Your remaining income is ",income - tax2
	else %anything else then
	    if income > 74357 and income <= 120887 then %if "income" is greater than 74357 and less than or equal to 120887 then
		tax3 := (income - 74357) * 0.26 + tax_rate1 + tax_rate2 %tax3 equals ("income" - 74357) * 0.26 + "tax_rate1" + "tax_rate2"
		put "Your yearly income is ", income %display message Your yearly income is "income"
		put "The first tax rate is 15%,which is ", tax_rate1 %display message The first tax rate is 15%,which is  "tax_rate1"
		put "The second tax rate is 22%,which is ", tax_rate2 %display message The second tax rate is 22%,which is "tax_rate2"
		put "The third tax rate is 26%,which is ", (income - 74357) * 0.26 %display message
		put "The total amount tax you need to pay is ", tax3 %display message The total amount tax you need to pay is "tax3"
		put "Your remaining income is ",income - tax3
	    else %anything else then
		if income > 120887 then %if "income" is greater than 120887 then
		    tax4 := (income - 120887) * 0.29 + tax_rate1 + tax_rate2 + tax_rate3 %tax4 equals ("income"-120887) * 0.29 + "tax_rate1" + "tax_rate2" + "tax_rate3"
		    put "Your yearly income is ", income %display message Your yearly income is "income"
		    put "The first tax rate is 15%,which is ", tax_rate1 %display message The first tax rate is 15%,which is  "tax_rate1"
		    put "The second tax rate is 22%,which is ", tax_rate2 %display message The second tax rate is 22%,which is "tax_rate2"
		    put "The third tax rate is 26%,which is ", tax_rate3 %display message The third tax rate is 26%,which is "tax_rate3"
		    put "The forth tax rate is 29%,which is ", (income - 120887) * 0.29 %display message The forth tax rate is 29%,which is ("income"-120887) * 0.29
		    put "The total amount tax you need to pay is ", tax4 %display message The total amount tax you need to pay is "tax4"
		    put "Your remaining income is ",income - tax4
		end if %end of if statement
	    end if %end of if statement
	end if %end of if statement
    end if %end of if statement
    delay (5000) %delay
    cls %clear screen
end loop %end of loop
