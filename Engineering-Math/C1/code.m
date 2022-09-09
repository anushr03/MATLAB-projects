% Anush Rathod
% 12/31/21
% ECE 201, Winter 22, C1
% Finding all the nth roots of a complex number and drawing them

clf   % clear all figures
clear   % remove all variables from the workspace

% needed to draw axes
ax = [-100,100]; ze = [0,0];

hold on
% plot x- and y-axes as black lines (draw the axes before using QUIVER)
plot(ax,ze, 'k', 'LineWidth', 1)
plot(ze,ax, 'k', 'LineWidth', 1)


% ----- input z = a + jb, then convert to exponential form -----

z = input('Input a complex number z as a+bj: ');
n = input('Input the power of the root, i.e., n of z^1/n: ');  % 
a = real(z); b = imag(z);

% z = a+jb = A*exp(j*phi)

A = norm(z);   % amplitude of z
phi = rad2deg(angle(z))   % phase of z in degrees, -180deg < phi <= 180deg


% ----- set up parameters needed to find n roots of z -----

% z^1/n = R*exp(jB)

R = A^(1/n);   % amplitude R of z^1/n
B = phi/n;   % phase in deg associated with principal value of z^1/n
dB = 360/n;   % difference between phase angles, in degrees

X = R*cosd(B); Y = R*sind(B);


% ----- plot roots and compute checks -----

% plot an arrow to represent the principal value of z^1/n, in red
quiver(0, 0, X, Y, 0, 'r', 'LineWidth', 3)

check = zeros(n,1);   % initialize n checks as a column vector

check(1) = z - (X + j*Y)^n;   % first check, output at the end

for i = 2:n   % cycle through the other values to make the rest of the arrows
    
    B = B + dB;   % add dB to find the next nth root of z
    X = R*cosd(B); Y = R*sind(B);

    % plot an arrow for the next root, in blue
    quiver(0, 0, X, Y, 0, 'b', 'LineWidth', 3)

check(i) = z - (X + j*Y)^n;

end

check   % output the n checks; each should be close to 0+j0


% ----- make the figure look nicer -----

grid on; axis equal   % makes the frame square, to emphasize the symmetry of the roots

ac = gca; ac.FontSize = 16; ac.GridAlpha = 0.5;   % change all fonts to 16pt; make the grid darker

xlabel('Re({\textbf{z}})', 'FontSize', 20, 'Interpreter', 'latex'); 
ylabel('Im({\textbf{z}})', 'FontSize', 20, 'Interpreter', 'latex')

% determine the sign of b, so that we can include z in the title
bSgn='+';
if b<0
    bSgn='-';
end
bMag = norm(b);   % magnitude of b
    
title({'ECE 201/296C Exercise C1/C9', ...
    sprintf('Finding and drawing the %d values of $(%d%sj%d)^{1/%d}$', ...
    n,a,bSgn,bMag,n)}, 'FontSize', 24, 'Interpreter', 'latex') 

max = ceil(R+0.1);   % round up R to the next integer
axis([-max max -max max])   % set the upper and lower limits of the axes 

hold off
