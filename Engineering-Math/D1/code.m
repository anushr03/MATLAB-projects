% Anush Rathod
% 01/02/22
% ECE 201, Winter 22, D1
% Solving first order differential equation numerically
% collaborator - KhushKumar Jajoo

clear; clf;

% ------ initializing variables --------
g = 5;
h = -6;
f0 = 3;
tmin = 0;
tmax = 1;
N = 1000;
t = linspace(tmin, tmax, N+1); % time array in sec
dt = (tmax - tmin)/N;
f = zeros(1, N+1);
f(1) = f0;

% ---- Numerical Solution -----

for i = 1:N
    
    df = h - g*f(i);
    f(i+1) = f(i) + dt*df;
    
end

% ------ analytical solution ------

C = f0 - h/g; % constant C for the homogeneous solution
f2 = C*exp(-g*t) + h/g;

check = f2 - f; % array of values close to zeros


% ----- plotting -------

plot(t, f, t, check, 'LineWidth', 3)  % thick blue line

ax = gca; ax.FontSize = 12;
xlabel('time t (s)', 'FontSize', 15)
ylabel('f(t)', 'FontSize', 15)
str1 = sprintf("df/dt + %uf(t) = %d, f(0) = %u",  g, h, f0);
title({'ECE201, D1, Solving numerically a  differential equation ',...
    str1}, 'FontSize', 18)
legend('Numerical solution', 'Check = analytic - numeric, should be zero',...
    'FontSize', 18)
grid on
