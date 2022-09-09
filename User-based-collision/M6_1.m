% Anush Rathod
% 03/11/21
% ECE 202 F21, Matlab exercise M6
% One Dimensional Elastic collision:   Find number of collision and
                                     % velocity after each collision with
                                     % user inputs
                                     % prove conservation of momentum and
                                     % energy


clear;
global m

% ------------ user inputs -----------

m = input('Enter mass of three carts in [a,b,c] format: '); % taking user 
                                                            % input of masses 
                                                            % in array format
v = input('Enter velocity of three carts in [a,b,c] format: '); % taking user 
                                                      % input of velocities 
                                                      % in array format
cutoff = input('Enter a cutoff for check: ');

KE0 = sum(0.5*m.*v.^2);  % initial kinetic energy, in erg
P0 = sum(m.*v);  % initial momentum (pi) in g-cm/s

count = 0;    % initialize a collision counter


%--- main routine calculating the collision and calling the functionm ---

while (v(1) > v(2) || v(2) > v(3))
    count = count + 1; % incrementing collision if while condition is true
    
    if v(1) > v(2) && v(2) > v(3) % if there is ambiguity
        
    col = input('Which carts collide first? ');
    
    end
    
    if v(1) > v(2) % if the condition is true, it is a collision between 
                   % cart 1 and cart 2 
       
        col = 12;
        
    end
    
    if v(2) > v(3) % if the condition is true, it is a collision between 
                   % cart 2 and cart 3
        
        col = 23;
        
    end
    
    fprintf("Number of Collision: %d\n", count)
    v = finalVelocity(v, col)
    
    % ------ checks --------
    
    checkEnergy = sum(1/2 *m.*v.^2) - KE0;
    checkMomentum = sum(m.*v) - P0;
    
    if checkEnergy > cutoff
        checkEnergy
    end
    if checkMomentum > cutoff
        checkMomentum
    end

    
end

fprintf('\n')
disp("There are no more collisions")
fprintf('\n')


% ------ function calculating the final velocity array ------

function vf = finalVelocity(vi, col)

global m;

M12 = m(1) + m(2); % sum of mass of cart 1 and cart 2
M23 = m(2) + m(3); % sum of mass of cart 2 and cart 3
vf = [0 0 0]; % initializing the final velocity array

if col == 12 % if collision betweeen cart 1 and cart 2
    vf(1) = (1/M12)*((m(1)-m(2))*vi(1) + 2*m(2)*vi(2));
    vf(2) = (1/M12)*((m(2)-m(1))*vi(2) + 2*m(1)*vi(1));
    vf(3) = vi(3);
end

if col == 23 % if collision between cart 2 and cart 3
    vf(1) = vi(1);
    vf(2) = (1/M23)*((m(2)-m(3))*vi(2) + 2*m(3)*vi(3));
    vf(3) = (1/M23)*((m(3)-m(2))*vi(3) + 2*m(2)*vi(2));
end
end




