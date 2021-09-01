%% Assignment - 3
% Write a function called freezing that takes a vector numbers that
% correspond todaily low temperatures in Fahrenheit. REturn numfreeze, the
% number of days with sub freezing temperatures (that is, lower than 31 F)
% without using loops.

function numfreeze = freezing(A)
x = A(A<32);
numfreeze = length(x);
end