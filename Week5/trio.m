%% Assignment - 2
% Write a function called trio that takes two positive integer inputs n and
% m. The function returns a 3n-by-m matrix called T. The top third of T (an 
% n by m submatrix) is all 1s, the middle third is all 2-s while the bottom third is all 3-s. See example below: 

function [T] = trio(n,m)
a = ones(n,m);
b = 2*ones(n,m);
c = 3*ones(n,m);
T = [a;b;c];
end