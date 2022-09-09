% Anush Rathod
% 11/30/21
% ECE 201, M8
% Solving partial fractions using Matrix operations

clear;

% ----- Calculations-------
A = [1, 1, 1; -5, -4, -3; 6, 3, 2];
B = [4; 5; 6];
c = inv(A)*B % finding c values using matrix operations

% ------ check -------

N = input("Enter the number of points: ")
x = linspace(-4, 4, N); % initializing array x with N points

D1 = x-1;
D2 = x-2;
D3 = x-3;

R1 = (B(3) + B(2)*x + B(1)*x.^2)./(D1.*D2.*D3);
R2 = c(1)./D1 + c(2)./D2 + c(3)./D3;
check = sum(abs(R1-R2))

% If N was equal to 5, the array 'x' will have the values -4, -2, 0, 2, 4.
% If x=2, one of the root of the denominator for R(x) becomes 0 and
% anything divided by 0 is not possible. This will result in no solution of
% R(x). This is why the check does not work. If N=6, the array 'x' becomes
% -4, -2.4, -0.8, 0.8, 2.4, 4. In the given case only x = 1, 2, 3 will make
% denominator zero. In the case of N=6, none of the array 'x' values are
% equal to 1,2 or 3 and therefore for N=6, the check works.
