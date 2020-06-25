# Scientific-Calculator-DE10-Lite

Video Demonstration: https://www.youtube.com/watch?v=a9l6ycWKlHY (Video Edited by Lawrence Hsiung)

This is a class project implementation of a simple calculator performing operations such as add, subtract, multiply, division, cosine, and sine. FSM design simulation conducted on VCS Synopsis and implementation using Intel Quartus Prime on FPGA DE10-Lite. My effort within the project consisted of leading the team meeting, project schedule, and wrote the files uploaded on this repository.

The scientific calculator top module input interactions are through two active low push buttons, SW[7:0], and outputs via LEDR[7:0] or HEX5 to HEX0. The states of the calculator are encapsulated in 4 bits, for a total of 16 states; 8 selection states and 8 committed operation states. KEY0 acts as an operation selection input, each event will cycle to the next state or operation as shown in Figure 2, the state diagram. At each selection state, the LEDR[7:4] will display the next state and LEDR[3:0] will display the current state. A more descriptive output of the current state is shown on HEX5 to 3; “a-d-d” for the addition, “o-p-3” for multiply, or “e-x-p” for exponential, etc.

Upon reaching the wanted operation, a KEY1 event will commit the user to that operation. The 7-Segment display will change to its respective operation configuration and the switches will act as the operand inputs. The respective display will be detailed in each operation’s module section. If a change of operation is needed, the user would push the KEY1 again to go back to the selection states and cycle to the wanted operation.

