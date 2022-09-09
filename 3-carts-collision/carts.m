% Anush Rathod
% 15/09/21
% ECE 202 F21, Matlab exercise M3
% One Dimensional Elastic collision: Find number of collision
                                     % prove conservation of momentum and
                                     % energy

clear
%-------- Given Information --------

m = [240, 60, 300]; % masses array of three carts, in g
Vi = [36, 9, -45]; % initial velocities array, in cm/s
M12 = m(1)+m(2);  % mass of cart 1 and cart 2 in g
M23 = m(2)+m(3);  % mass of cart 2 and cart 3 in g

% -------- Calculations --------

KEi = sum(1/2 *m.*Vi.^2); % initial kinetic energy, in erg
Pi = sum(m.*Vi); % initial momentum (pi) in g-cm/s

%-------- First collision between cart 2 and cart 3 --------

vA = [Vi(1), 0, 0]; % initializing final velocity array, in cm/s

vA(2) =  (1/M23)*((m(2)-m(3))*Vi(2) + 2*m(3)*Vi(3)); 
% final velocity of cart 2, in cm/s

vA(3) = (1/M23)*((m(3)-m(2))*Vi(3) + 2*m(2)*Vi(2))
% final velocity of cart 3, in cm/s

% ------- Checks after Collision 1-------

checkEnergy_A = sum(1/2 *m.*vA.^2) - KEi % Conservation of kinetic energy
                         % should be 0 for the princle to hold true
                         
checkMomentum_A = sum(m.*vA) - Pi % conservation of momentum
                        % should be 0 for the princle to hold true 

% ------ check if there is another collision -----

if vA(1) <= vA(2) && vA(3) >= vA(2)
     disp("There are no more collisions.")
 else
     disp("There is another collision.")
end

%-------- Second collision between cart 1 and cart 2 --------

vB = [0, 0, vA(3)]; % initializing final velocity array, in cm/s

vB(1) = (1/M12)*((m(1)-m(2))*vA(1) + 2*m(2)*vA(2)); 
% final velocity of cart 1, in cm/s

vB(2) = (1/M12)*((m(2)-m(1))*vA(2) + 2*m(1)*vA(1))
% final velocity of cart 2, in cm/s

% ------- Checks after Collision 2-------

checkEnergy_B = sum(1/2 *m.*vB.^2) - KEi % Conservation of kinetic energy
                         % should be 0 for the princle to hold true
                         
checkMomentum_B = sum(m.*vB) - Pi % conservation of momentum
                        % should be 0 for the princle to hold true 


% ------ check if there is another collision -----

if vB(1) <= vB(2) && vB(3) >= vB(2)
     disp("There are no more collisions.")
 else
     disp("There is another collision.")
end


%-------- Second collision between cart 2 and cart 3 --------

vC = [vB(1), 0, 0]; % initializing final velocity array, in cm/s

vC(2) = (1/M23)*((m(2)-m(3))*vB(2) + 2*m(3)*vB(3));
% final velocity of cart 2, in cm/s

vC(3) = (1/M23)*((m(3)-m(2))*vB(3) + 2*m(2)*vB(2))
% final velocity of cart 3, in cm/s


% ------- Checks after Collision 3-------

checkEnergy_C = sum(1/2 *m.*vC.^2) - KEi % Conservation of kinetic energy
                         % should be 0 for the princle to hold true
                         
checkMomentum_C = sum(m.*vC) - Pi % conservation of momentum
                        % should be 0 for the princle to hold true 

% ------ check if there is another collision -----

if vC(1) <= vC(2) && vC(3) >= vC(2)
     disp("There are no more collisions.")
 else
     disp("There is another collision.")
end

% --- fourth collision between cart 1 and cart 2 ---

vD = [0, 0, vC(3)];

vD(1) = (1/M12)*((m(1)-m(2))*vC(1) + 2*m(2)*vC(2));
% final velocity of cart 1, in cm/s

vD(2) = (1/M12)*((m(2)-m(1))*vC(2) + 2*m(1)*vC(1))
% final velocity of cart 2, in cm/s


% ------- Checks after Collision 4-------

checkEnergy_D = sum(1/2 *m.*vD.^2) - KEi % Conservation of kinetic energy
                         % should be 0 for the princle to hold true
                         
checkMomentum_D = sum(m.*vD) - Pi % conservation of momentum
                        % should be 0 for the princle to hold true 


% ------ check if there is another collision -----

if vD(1) <= vD(2) && vD(3) >= vD(2)
     disp("There are no more collisions.")
 else
     disp("There is another collision.")
end

% --- Fifth collision between cart 1 and cart 2 ---

vE = [vD(1), 0, 0];

vE(2) = (1/M23)*((m(2)-m(3))*vD(2) + 2*m(3)*vD(3));
% final velocity of cart 2, in cm/s

vE(3) = (1/M23)*((m(3)-m(2))*vD(3) + 2*m(2)*vD(2))
% final velocity of cart 3, in cm/s


% ------- Checks after Collision 4-------

checkEnergy_E = sum(1/2 *m.*vE.^2) - KEi % Conservation of kinetic energy
                         % should be 0 for the princle to hold true
                         
checkMomentum_E = sum(m.*vE) - Pi % conservation of momentum
                        % should be 0 for the princle to hold true 


% ------ check if there is another collision -----

if vE(1) <= vE(2) && vE(3) >= vE(2)
     disp("There are no more collisions.")
 else
     disp("There is another collision.")
end



% ------ Answer for part(a) and part(c)-------

% (a) There are a total of 5 collisions

% (c) The velocities of the carts will determine whether the next collision
% will take place or not. Since the first collision will take place between
% cart 2 and 3, we'll talk about the next one. If v1f<v2, cart 1 will not
% reach cart 2, when it collides with cart3, therefore no collision will
% take place. If both velocities are negative. If v1f<v2f, cart 1 is moving
% faster than cart2 and cart2 will never reach cart 1. And if they are in
% opposite direction, they will not collide anyways, since they are
% different directions. 
