% Anush Rathod
% 09/17/2021
% ECE202 F21, MATLAB excercise M4 part(d)
% plotting a three dampings for parallel RLC

clear
clf


%------- setting up values for t and v---------

tms = linspace(0, 40, 400);  % time array, in ms
t = tms/1000; % converting the time array to s

v1t = 16*exp(-800*t) - 4*exp(-200*t); %voltage function array, in volts

v2t = exp(-500*t).*(12 - 6000*t);

v3t = exp(-120*t).*(12*cos(450*t) - 5*sin(450*t));


%----- plotting the graphs------

plot(tms, v1t,'r',tms, v2t,'g',tms, v3t,'b','LineWidth', 3)
% plotting the graphs with x axis in ms

legend('overdamped','critically damped','underdamped','FontSize',15) 
% adding description

% ----- setting title, axes titles, and axis limits and fontsize-----

ax = gca; ax.FontSize = 12;
xlabel('time (ms)', 'FontSize', 15)
ylabel('Voltage(V)', 'FontSize', 15)
title('ECE 202, Exercise M4, part(d), Three dampings for parallel RLC',...
'FontSize', 18)
grid on
