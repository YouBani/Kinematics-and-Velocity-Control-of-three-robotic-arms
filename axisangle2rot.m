function R = axisangle2rot(omega,theta)
% This function converts exponential coordinates of rotation to 
% rotation matrices using Rodrigues'formula 
% Inputs: - Omega is a 3D vector that reprensents the rotation axis
%         - Theta is a scalar that represents the rotation angle
% Output: The rotation matrix SO(3)

    R = eye(3) + sin(theta) * skew(omega) + (1 - cos(theta)) * skew(omega)^2;
end

