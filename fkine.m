function T = fkine(S,M,q)
    qSize = size(q);
    numberOfJoints = qSize(2);
    T = eye(4);
    for i = 1:numberOfJoints
        T = T * twist2ht(S(:,i), q(i));
    end
    T = T * M;
end