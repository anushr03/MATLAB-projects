% Anush Rathod
% 11/29/2021
% ECE 202, Matlab Exercise M7
% Computing and graphing various functions of a given circuit

clear; clf;

% ------ Given Information -----

V0 = 10; % given volatage, in volts
R = 2; % given resistance, in ohms
L = 50; % given inductance, in mH
tau = L/R; % time constant, in ms

% ------ Setting up variables for plotting ------
tmin = 0; % in ms
tmax = 10*tau; % in ms
N = 400; % number of intervals
dt = (tmax-tmin)/N; 
t = linspace(tmin, tmax, N+1); %time array, in ms
iF = V0/R; % current after a very very very long time, in amps(A)
it = iF*(1-exp(-t/tau)); % current as a function of time t, in amps(A)
vt = V0*exp(-t/tau); % voltage function as a function of time t, in volts(V)
pt = vt.*it;

% ------ Checks-------

wf = (1/2)*L*iF^2 % total energy in Inductor, in mJ
% I assumed very very very long time as infinite and replacing t=infinity
% in the (it) expression will make the it = V0/R. 

w_abs = sum(pt)*dt % finding abs value of energy from graph, in mJ
dw = w_abs - wf % difference between approximate energy stored and exact energy 
              %absorbed
percent_error = dw/wf * 100

% ----- Plotting the graphs ------
% plotting the first subplot
subplot(3, 1, 1)
plot(t,it, 'r' ,'LineWidth', 2)
ylabel("Current (A)", 'FontSize', 15)
text(240, 1.25, sprintf("$ i(t) = %u \\cdot(1-e^{-t/%u})$", iF, tau), 'FontSize'...
    , 18, 'HorizontalAlignment', 'right', 'Interpreter', 'latex')
grid on
ax = gca; ax.FontSize = 12;

% plotting the second subplot
subplot(3,1,2)
plot(t,vt, 'b' ,'LineWidth', 2)
ylabel("Voltage (V)", 'FontSize', 15)
text(240, 7, sprintf("$ v(t) = %u \\cdot e^{-t/%u}$", V0, tau), 'FontSize'...
    , 18, 'HorizontalAlignment', 'right', 'Interpreter', 'latex')
grid on
ax = gca; ax.FontSize = 12;

% plotting the third subplot
subplot(3,1,3)
plot(t,pt, 'g' ,'LineWidth', 2)
ylabel("Power absorbed (W)", 'FontSize', 15)
text(240, 10, sprintf("$ p(t) = v(t) \\cdot i(t)$"), 'FontSize'...
    , 18, 'HorizontalAlignment', 'right', 'Interpreter', 'latex')
grid on
ax = gca; ax.FontSize = 12;

xlabel('Time (ms)','FontSize', 15)
str1 = sprintf(' (V_0 = %uV, R = %u\\Omega, L = %umH)', V0, R, L);
sgtitle({'ECE 202, M7: Current, Voltage, and Power absorbed',...
    'for a charging conductor', str1},'FontSize', 20)
