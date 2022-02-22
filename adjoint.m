function twist_inB = adjoint(twist_inA,T_AB)
% This function return the adjoint transformation
% Inputs: - twis_inA is twist vector that reprensents the pose of the robot
%         - T_AB is a homogeneous transformation matrix
% Output: The adjoint transformation

    R = T_AB(1:3, 1:3);
    p = T_AB(1:3, 4);
    Adjoint = [R zeros(3);
        skew(p)*R R];
    twist_inB = Adjoint * twist_inA;
end