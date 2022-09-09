% Anush Rathod
% 01/017/22
% ECE 201, Winter 22, L3
% Finding the matrix that will diagonalize another matrix and outputting the
% diagonalized matrix
% collaborator - KhushKumar Jajoo

clear;

% ----- User Input and finding the DET and TR  ------

M = input('Input a 2X2 matrix as [a b; c d]: '); % taking a 2X2 matrix as a 
                                                % user input
d = det(M); % finding the determinant of the matrix M
t = trace(M); % finding the trace of the matrix M

% ----- finding eigenvalues -----

e1 = (t - sqrt(t^2 - 4*d))/2  % finding the two eigenvalues using quadratic 
                                   % formulae
e2 = (t + sqrt(t^2 - 4*d))/2


% ----- Finding unfixed eigenvectors  -----

a1 = -M(1,2);
b1 = M(1,1) - e1;
x1 = [a1; b1] % unfixed eigenvector for e1

% for e2 

a2 = -M(1,2);
b2 = M(1,1) - e2;
x2 = [a2;b2] % unfixed eigenvector for e2

% ----- Checking if matrix is diagonalizable ------

if round(e1)-round(e2) == 0
    
    disp("The matrix M is not diagonalizable")
    
else
    
    X = [x1 x2]
    D = inv(X)*M*X
    
end

% The diagonalization formula given in the pdf, says that D = X^(-1)*M*X,
% where D is the diagonalized matrix, X is the matrix consisting of the two
% independent eigenvectors and M is the original matrix. Thus, We can prove
% that the determinant of the original matrix is equal to the determinant
% of the diagonalized matrix by using properties of determinant.

% D = X^(-1)*M*X
% (taking det on both sides)
% det(D) = det(X^(-1)*M*X)
% det(D) = det(X^(-1))*det(M)*det(X)
% (det of the inverse of a matrix is nothing but the reciprocal of the det
%  of the actual matrix) **
% det(D) = (1/det(X))*det(M)*det(X)
% thus, det(D) = det(M)

% ** proving det(X^-1) = 1/det(X) **

% We know that det(A*B) = det(A)*det(B)
% We also know A*A^-1 = I (I being the identity matrix)
% therefore,
% X*X^-1 = I (taking det on both sides)
% det(X*X^-1) = det(I)
% det(X)*det(X^-1) = det(I) (det of a identity matrix is always 1)
% det(X)*det(X^-1) = 1
% det(X^-1) = 1/det(X)
% hence, provedd


