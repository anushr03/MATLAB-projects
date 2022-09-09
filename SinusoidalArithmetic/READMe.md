PROJECT DESCRIPTION

Consider the following function f(t), where time t is measured in seconds: 

f(t) = 15·cos(80t + 1.2)·cos(120t – 1.8)

Look up the formula for turning the product of two sinusoids into the sum of two sinusoids. Include an appropriate citation near the beginning of your script. Write the identity in a comment near the beginning of your script, using the same symbols used in your citation. (You can change a and b to a and b or A and B.)

Write a MATLAB script that will demonstrate that a product of two sinusoids can be written as the sum of two sinusoids. Do this by graphing all three functions on one figure, i.e., f(t) and the two sinusoids whose sum should be equal to f(t), from t = –100ms to t = 100ms, then by graphing a “checking” function that should be an array of zeros if the identity is correct.

Think about how you can compute the three functions efficiently. (HINT: Look at the identity you are using, and define two simple functions that you can use to define all three functions to plot.) There will also be an overall factor that you can define then use three times.
