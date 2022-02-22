function T = twist2ht(S,theta)
% This function converts twists to homogeneous transformation matrices 
% Inputs: - S is a twist vector that reprensents the enf effector velocity
%         - Theta is a scalar that represents the rotation angle
% Output: The homogeneous transformation matrix

    omega = S(1:3);
    v = S(4:6);
    R = axisangle2rot(omega, theta);
    T = [R (eye(3)*(theta) +  (1 - cos(theta))*(skew(omega)) + (theta - sin(theta))*(skew(omega)^2))*v;
        0 0 0 1];
end

