% Anush Rathod
% 01/02/22
% ECE 201, Winter 22, D3
% Finding the coefficients of the particular solution of a forced, second
% order, linear differential equation
% collaborator - KhushKumar Jajoo

clear;

% ----- taking user inputs -----

disp("Equation for reference (df/dt)^2 +g*(df/dt) + h*f(t) = a*cos(wt) + b*sin(wt)")
disp(' '); % entering a new line

g = input("Enter the value of g in equation: ");
h = input("Enter the value of h in equation: ");
a = input("Enter the value of a in equation: ");
b = input("Enter the value of b in equation: ");
w = input("Enter the value of w in equation: ");

% ------ setting up matrix to solve for the two coefficiants ------

% the two simultaneous equations that will form for solving for the two
% Coefficiants of the particular solution will be in this form
% D1(h - w^2) + D2 (g*w) = a
% D1 (-g * w) + D2 (h - w^2) = b

 % setting up variables to be used more than once and using to to make the
 % matrix
 c1 = h - w^2;
 c2 = g*w;
 
 A = [c1 c2; -c2 c1]; % matrix A from the form Ax=B to solve for the coefficiants
 B = [a; b]; % matrix B from the form Ax=B to solve for the coefficiants
 x =  inv(A) * B; % solving for matrix x which will have the Coefficiants
 
 % the particular solution will have the form (D1*cos(wt) + D2*sin(wt))
 
 D1 = x(1)
 D2 = x(2)
 
