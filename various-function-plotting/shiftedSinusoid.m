% Anush Rathod
% 09/17/2021
% ECE202 F21, MATLAB excercise M4 part(b)
% plotting Shifted sinusoid

clear
clf

%----- setting up array and values for x and g(x)---------
x = linspace(-5, 5, 400); % length array, in m
gx = 4*cos(3*(x-2)); % shifted sinusoid values

%----- plotting the graphs------
plot(x, gx, 'r', 'LineWidth', 3)  % thick red line
ylim([-6 6])


%------ labeling the axes-------
ax = gca; ax.FontSize = 12;
xlabel('x (m)', 'FontSize', 15)
ylabel('g(x)', 'FontSize', 15)
title('ECE202 M4 part(b)- Shifted Sinusoid', 'FontSize', 18)

grid on
