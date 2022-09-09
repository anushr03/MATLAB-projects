PORJECT DESCRIPTION

Build a script with a user-defined function to compute the final velocities of two carts, for any set of three initial velocities and masses of the carts input by the user. If there is ambiguity about which two carts collide first, ask the user to specify which collision is first.

Use a WHILE statement to keep computing the result of each collision until there are no more collisions. Output the final velocity array after each collision. At the end, display something appropriate, such as, “There are no more collisions.”

As before, check that total energy and total momentum are both conserved after each collision. However, output the results only if there is a problem. The checks should be in the main routine. Add a user input for the “cutoff” you will use to decide if there is a problem.

Use a counter to keep track of the number of collisions and to make the output more meaningful. Output a statement that includes the collision number associated with each set of “final” velocities.

Arrays and dot operations should be used to maximize efficiency.

Test your script in four ways: (1) using the values from M3; (2) no collisions; (3) 20+ collisions; and (4) a very small cutoff.
