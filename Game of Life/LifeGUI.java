/** LifeGUI.java
 * Author: Dao, Steven
 * Class:
 * Date: September 2009.
 */

import javax.swing.*;
import java.awt.*;
import java.awt.event.*;
public class LifeGUI
{
    JFrame frame;
    JPanel contentPane;
    JButton[][] grid;
    JButton button,next,clear;

    public static void main(String[] args)
    {
        LifeGUI life = new LifeGUI();
        
    }

    public LifeGUI()
    {
        frame = new JFrame("GameOfLife");
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);

        //Creates a panel
        contentPane = new JPanel();
        contentPane.setLayout(new GridLayout(21,20,1,1));
        contentPane.setBorder(BorderFactory.createEmptyBorder(1,1,1,1));
        frame.setContentPane(contentPane);
    	
        //Creates Array of Buttons, 20x20 grid of Buttons
        grid = new JButton [21][21];
        for (int col = 1; col < 21; col++)
        {
            for (int  row = 1;  row < 21; row++)
            {
                grid[col][row]= new JButton("");
                grid[col][row].setBackground(Color.white);
                grid[col][row].setActionCommand("Live"+String.format("%02d", row)+String.format("%02d", col));
                grid[col][row].addActionListener(new DeadAliveListener());
                contentPane.add(grid[col][row]); 	
            }
        }
        //Creates Next Button
        next = new JButton ("Next");
        next.addActionListener(new NextListener());
        contentPane.add(next);
    	
        //Creates Clear Button
        clear = new JButton ("Clear");
        clear.addActionListener(new CleartListener());
        contentPane.add(clear);
    	
        //Size and displays the frame
        frame.setContentPane(contentPane);
        frame.pack();
        frame.setVisible(true);
    }
   
    class CleartListener implements ActionListener
    {
     /**
     * Reverts all Cells back to 'O'
     */
        public void actionPerformed(ActionEvent event)
        {
             for (int col = 1; col < 21; col++)
             {
                 for (int  row = 1;  row < 21; row++)
                 {
                     grid[col][row].setText("");
                     grid[col][row].setBackground(Color.white);
                     grid[col][row].setActionCommand("Live"+String.format("%02d", row)+String.format("%02d", col));	
                 }
             }
         }
     }

    class DeadAliveListener implements ActionListener
    {
    /**
     * Handles The the 'Dead' cells to become Alive when they are 'click' and vice versa
     */
        public void actionPerformed(ActionEvent event)
        {
            //Retrieves the ActionCommand makes it into a String
            String statusCoord = event.getActionCommand();
        	
            //Using SubStrings retieves the Status of 'Alive' and the Co-ordinates of Col and Row (Retrieved Data Type is String)
            String deadAlive= statusCoord.substring(0,4);
            String rowNum = statusCoord.substring(4,6);
            String colNum = statusCoord.substring(6,8);
        	
            //Converts the Data Obtain that are Strings to Integer, so it can be used for the Button Position.
            int row = Integer.parseInt(rowNum);
            int col = Integer.parseInt(colNum);
    	
            //Changes the Button to an X or O when Clicked
            if (deadAlive.equals("Live"))
            {
                grid[col][row].setText("X");
                grid[col][row].setBackground(Color.lightGray);
                grid[col][row].setActionCommand("Dead"+String.format("%02d", row)+String.format("%02d", col));
            }if (deadAlive.equals("Dead"))
            {
                grid[col][row].setText("");
                grid[col][row].setBackground(Color.white);
                grid[col][row].setActionCommand("Live"+String.format("%02d", row)+String.format("%02d", col));
            }
        }
    }
	
    class NextListener implements ActionListener
    {
    /**
     * Handles The Next button adn the 'Next Generations' to come
     *
     */
        public void actionPerformed(ActionEvent event)
        {
         int cellCounter;
         String[][] newGeneration = new String[22][22];
     	
          /** * * * * * * * * * * * * * * * * *O= !!! IMPORTANT !!! =O* * * * * * * * * * * * * * * * * * * **/
          /** * * This Part of the Code maps the Button arrays onto the Array of Strings* * **/
          /** * * * * *Repeats itself 20 times for Rows and 20 times for Columns* * * * * * */
          /** * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * ** * * * * * * * * * * * */
         for (int col = 1; col < 21; col++)
            {
                for (int row = 1; row < 21; row++)
                {
                    newGeneration[row][col] = grid[col][row].getText();
                }
            }
                     /** * * * * * * * * * * * * * * * * *O= !!! IMPORTANT !!! =O* * * * * * * * * * * * * * * * * * * **/
                                                              /**     C=Columns    R=Rows      **/
                 	
                                                              /** [C-1,R-1]  [C,R-1]  [C+1,R-1] **/
                                                              /**   [C-1,R]      [C,R]     [C+1,R]   **/
                                                              /** [C-1,R+1] [C,R+1] [C-1,R+1] **/
                                                          	
               /**This is the System of Checking if the Cell Lives or Dies the code looks complicated**/
       /**But, the Method to do this is quite logical, though there might be way for it to be more efficient**/
           /**Note the cells above are a diagram of the method for checking, please use the diagram**/
                              /**If there is any misunderstanding or confusion in what the code does.**/
                          	
                       /** * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * **/
         	
        	
         for (int row = 1; row < 21; row++)
         {
            for (int col = 1; col < 21; col++)
            {
                cellCounter = 0;
               /** Reverses the Order, Columns become Rows and Rows become Columns*/
               /** Co-ordinates of Button array are (Rows, Columns) but, Regular Arrays are (Columns, Rows)*/
               //Reverses the Order in order for 'col and 'row' to be used for the Button Array grid[][]
                int newRow = col;
                int newCol =row;
            	
                    //Counts the Number of Cells around the Specific Cell *Refer to Diagram*
                 if (newGeneration[col-1][row-1] == "X")
                    {cellCounter = cellCounter + 1;
                    }
                    if (newGeneration[col][row-1] == "X")
                    {
                     cellCounter = cellCounter + 1;
                    }
                    if (newGeneration[col+1][row-1] == "X")
                    {cellCounter = cellCounter + 1;
                    }
                    if (newGeneration[col-1][row] == "X")
                    {cellCounter = cellCounter + 1;
                    }
                    if (newGeneration[col+1][row] == "X")
                    {cellCounter = cellCounter + 1;
                    }
                    if (newGeneration[col-1][row+1] == "X")
                    {
                    cellCounter = cellCounter + 1;
                    }
                    if (newGeneration[col][row+1] == "X")
                    {
                    cellCounter = cellCounter + 1;
                    }
                    if (newGeneration[col+1][row+1] == "X")
                    {
                    cellCounter = cellCounter + 1;
                    }
                    // Controls which cells become Alive or Die according to numbers Live cells are around the Cell
                    switch(cellCounter)
                    {
                        case 0:
                        case 1:
                        case 4:
                        case 5:
                        case 6:
                        case 7:
                        case 8:
                        // cell death
                        grid[newCol][newRow].setText("");
                        grid[newCol][newRow].setBackground(Color.white);
                        grid[newCol][newRow].setActionCommand("Live"+String.format("%02d", newRow)+String.format("%02d", newCol));
                        break;
                        case 2:
                        // no change
                        break;
                        case 3:
                        // cell birth
                        grid[newCol][newRow].setText("X");
                        grid[newCol][newRow].setBackground(Color.lightGray );
                        grid[newCol][newRow].setActionCommand("Dead"+String.format("%02d", newRow)+String.format("%02d", newCol));
                        break;
                        default:
                        break;
                    } 	
                }
            }  	
        }
    }
}
