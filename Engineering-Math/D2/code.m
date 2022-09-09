% Anush Rathod
% 01/02/22
% ECE 201, Winter 22, D2
% Solving a more general first order differential equation numerically
% collaborator - KhushKumar Jajoo

clear; clf;

% ------ initializing variables and user inputs --------

% A = input("Enter value of constant A in equation (df/dt + At^n*f(t) = Bcos(wt)): ");
% B = input("Enter value of constant B in equation (df/dt + At^n*f(t) = Bcos(wt)): ");
% n = input("Enter value of power n in equation (df/dt + At^n*f(t) = Bcos(wt)): ");
% w = input("Enter value of w in equation(df/dt + At^n*f(t) = Bcos(wt)): ");
% f0 = input("Enter the initial value at f(t) when t = 0: ");
A = 5;
B = -6;
n = 0;
w = 0;
f0 = 3;
tmax = 1
tmin = 0;
% tmax = input("Enter the ending time for t: ");
N = 1000;
t = linspace(tmin, tmax, N+1); % time array in sec
dt = (tmax - tmin)/N;
f = zeros(1, N+1);
f(1) = f0;

% ---- Numerical Solution -----

for i = 1:N
    
    df = B*cos(w*t(i)) - A*(t(i)^n)*f(i);
    f(i+1) = f(i) + dt*df;
    
end

% ----- analytical solution -------

plot(t, f, 'LineWidth', 3)
ypos = 3.35;
hold ON

if n==0 && w == 0
    
    C = f0 - B/A; % constant C for the homogeneous solution
    f2 = C*exp(-A*t) + B/A;
    

    check = f2 - f; % array of values close to zeros
    
    plot(t, check, 'LineWidth', 3)
    ypos = 2.75; % initializing position for the text box
    legend('Numerical solution', 'Check = analytic - numeric, should be zero',...
        'FontSize', 18,'Location','north')
end


% ----- plotting -------



ax = gca; ax.FontSize = 12;
xlabel('time t (s)', 'FontSize', 15)
ylabel('f(t)', 'FontSize', 15)

if tmax == 1
    xpos = tmax - 0.2;
else
    xpos = tmax - 2;
end

text(xpos,ypos, sprintf("$ df/dt + %ut^%uf(t) = %d\\cos(%ut)$, f(0) = %u",...
    A, n, B, w, f0),'FontSize', 18, 'HorizontalAlignment', 'right',...
    'Interpreter', 'latex')

title('ECE201, D2, Solving a more general differential equation numerically',...
    'FontSize', 18)

grid on
