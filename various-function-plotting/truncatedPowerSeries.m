% Anush Rathod
% 09/17/2021
% ECE202 F21, MATLAB excercise M4 part(a)
% plotting Truncated power series

clear
clf

%------- setting up values for t and f---------

t = linspace(0, 6, 400);  % time array, in s
f = 1 + t/2 - (t.^2)/3;  % truncated series

%------ plotting the graph --------

plot(t, f, 'b', 'LineWidth', 3)  % thick blue line

%------ Labeling the axes-------
ax = gca; ax.FontSize = 12;
xlabel('time t (s)', 'FontSize', 15)
ylabel('f(t)', 'FontSize', 15)
title('ECE202 M4 part(a)- Truncated power Series', 'FontSize', 18)

grid on
