% Anush Rathod
% 09/17/2021
% ECE202 F21, MATLAB excercise M4 part(c)
% plotting a Normalized Gaussian graph

clear
clf

%----- setting up array and values for x and P(x)---------
x = linspace(0, 10, 400); % length array, in m
P = exp((-1*(x-5).^2)/4)/(2*sqrt(pi)); % Probability Density array, in m^-1

%----- plotting the graphs------
plot(x, P, ':', 'LineWidth', 3)  % dotted blue line

%------ labeling the axes-------
ax = gca; ax.FontSize = 16;
xlabel('x (m)', 'FontSize', 20)
ylabel('Probablity Density (m^{-1})', 'FontSize', 20)
title('ECE202 M4 part(c)- Normalized Gaussian', 'FontSize', 24)

grid on
