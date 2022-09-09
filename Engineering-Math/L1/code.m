% Anush Rathod
% 12/31/21
% ECE 201, Winter 22, L1
% Solving and answers various questions relating to matrices

clear;

% ------ initializing the matrices A, B, C ------

A = [6 -5 -2; 2 -4 5; 0 1 -8];
B = [2 3 5; -1 1 6; 8 -5 -3];
C = [-1 -4 1; 2 2 0; -4 3 2];

% ----- answering various questions ------

% (a)
AB = A*B
BA = B*A
Check_part_a = AB-BA % should not be equal to a 3X3 array of zeros
% the check shows that A*B ≠ B*A

% (b)
BC = B*C;
Check_part_b = AB*C - A*BC % should be equal to a 3X3 array of zeros
% the check confirms that (AB)C = A(BC)

% (c)
Check_part_c = (A+B)*C - (A*C + BC) % should be equal to a 3X3 array of zeros
% the check confirms that (A+B)C=AC+BC

% (d)
A_T = transpose(A);
B_T = transpose(B);
AB_T = transpose(AB);
Check_part_d1 = AB_T - B_T*A_T % should be equal to a 3X3 array of zeros
% the check confirms (AB)' = B'A'
Check_part_d2 = AB_T - A_T*B_T % should not be equal to a 3X3 array of zeros
% the check confirms (AB)' = A'B'

% (e)
A_i = inv(A)
B_i = inv(B)
AB_i = inv(AB)
Check_part_e1 = AB_i - A_i*B_i  % should not be equal to a 3X3 array of zeros
% the check confirms (AB)^-1 ≠ A^-1 * B^-1
Check_part_e2 = AB_i - B_i*A_i % should be equal to a 3X3 array close to zeros
% the check confirms (AB)^-1 = B^-1 * A^-1

% (f)
A_d = det(A)
B_d = det(B)
AB_d = det(AB)
check_part_f = AB_d - A_d*B_d % should be equal to a number very close to zero
% the check confirms det(AB) = det(A) det(B)

% (g)
Check_part_g = det(1.2*A) - ((1.2^3)*A_d) % should be a number very close to zero
% the check confirms det(1.2A) = (1.2)^3 det(A).
