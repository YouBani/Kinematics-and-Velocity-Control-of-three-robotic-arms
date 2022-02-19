function R = axisangle2rot(omega,theta)
    omegaSS = [0 -omega(3) omega(2); omega(3) 0 -omega(1); -omega(2) omega(1) 0];
    R = eye(3) + sin(theta) * omegaSS + (1 - cos(theta)) * omegaSS^2;
end