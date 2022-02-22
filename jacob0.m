function J = jacob0(S,q) 
% This function return the jacobians in the space frame
% Inputs: - S is a twist vector that reprensents the end effector velocity
%         - q is a joint
% Output: The jacobian matrix

   q = q';
   J = S;
   T = eye(4);
   for i = 2:length(q)
       T = T * twist2ht(S(:, i-1), q(i-1));
       J(:, i) = adjoint(S(:,i), T);
   end
end