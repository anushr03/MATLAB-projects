% Anush Rathod
% 01/02/22
% ECE 201, Winter 22, L2
% Finding Eigenvalues and Eigenvector of any 2X2 matrix
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

% ----- Finding unfixed eigenvectors and checking the eigenvalues -----

% for e1

a1 = -M(1,2);
b1 = M(1,1) - e1;


Check_e1 = a1/b1 - (e1 - M(2,2))/M(2,1) % should be equal to zero for e1 
                                          % to be correct

x1 = [a1; b1] % unfixed eigenvector for e1

% for e2 

a2 = -M(1,2);
b2 = M(1,1) - e2;


Check_e2 = a2/b2 - (e2 - M(2,2))/M(2,1) % should be equal to zero for e2 
                                          % to be correct

x2 = [a2;b2] % unfixed eigenvector for e2

% ----- fixing the eigenvectors and checking -------

% for x1

if x1(1) < 0
    x1 = -x1;
end

n1 = x1/sqrt(x1.'*x1)
check_n1 = M*n1 - e1*n1 % should be an array with values equal to zero or 
                         % close to zeros

% for x2

if x2(1) < 0
    x2 = -x2;
end

n2 = x2/sqrt(x2.'*x2)
check_n2 =  M*n2 - e2*n2 % should be an array with values equal to zero or 
                         % close to zeros

% ------ answers to various questions ------

% (a) - for both eigenvalues to be postive, d>0, the diagonal elements of
% the matrix must be positive to have t>0 and d<t^2 / 4. This will make
% sure that the discriminant is not less -ve

%(b) - for one eigenvalue to positive and the other one to negative, d<0

%(c) - for one eigenvalue to be zero, d = 0

% (d) - for one distinct eigenvalue, d = t^2 / 4 
