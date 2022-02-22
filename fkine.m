function T = fkine(S,M,q)
% This function returns the manipulator kinematics using the product of
% Exponentials Formula
% Inputs: - S is a screw axis 
%         - M is the home configuration 
%         - q is a joint
% Output: The manipulator kinematics

    qSize = size(q);
    numberOfJoints = qSize(2);
    T = eye(4);
    for i = 1:numberOfJoints
        T = T * twist2ht(S(:,i), q(i));
    end
    T = T * M;
end