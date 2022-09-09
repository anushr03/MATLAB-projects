% Anush Rathod
% 09/20/2021
% ECE202 F21, MATLAB excercise M5 
% Expanding a sinusoid product as a sum of two sinusoids and plotting the
% three functions
% Citation - http://hyperphysics.phy-astr.gsu.edu/hbase/trid.html
% cosA * cosB = (1/2)[cos(A+B)+cos(A-B)]

clf
clear

%--------- Given Information ---------
tms = linspace(-100, 100, 400); % time array, in ms
t = tms/1000; % converting the time array to s
k = 15;  % constant factor to use in Equations 
A = 80*t + 1.2; % first angle of the sinusoid
B = 120*t - 1.8; % second angle of the sinusoid

f = k*cos(A).*cos(B);

s1 = k/2 * cos(A+B); % First term of the sum of sinusoid
s2 = k/2 * cos(A-B); % second term of the sum of sinusoid

check_f = f - (s1 + s2); % array to check the difference between the two 
                           % functions. All values should be close to zero

% ------- Plotting the graphs ---------
plot(tms, f, tms, s1, tms, s2, tms, check_f,'LineWidth', 2)

ax = gca; ax.FontSize = 12;
xlabel('time t (ms)', 'FontSize', 15)
ylabel('f(t)', 'FontSize', 15)
ylim([-20 30])
title({'ECE 202, M5, Showing that product of two sinusoids can be written',...
'as the sum of two sinusoids'},'FontSize', 18)
legend("f = product","s1 = sinusoid 1", "s2 = sinusoid 2",...
    "checking array = ft - (s1+s2) should be 0", 'FontSize', 15)

grid on
ax.GridAlpha = 0.5;

% --------- Checks ----------

checkSum = sum(abs(check_f)) % should be a value close to zero

% the use of absolute function makes sure that the all the values are
% positive and some values with opposite signs will not cancel each other.
% Also, this will verify if their sum is close to zero.
