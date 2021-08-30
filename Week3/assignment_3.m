%% Assignment 3
% 1- Crate a row vector of 1's that has same number of elements as A has
% rows
% 2- Create a column vector of 1's that has the same number of elements as
% A has columns
% Using matrix multiplication, assign the product of the row vector, the
% matrix A, and the column vector (in this oreder) to the variable result.
% Think about what result

A = [1:5; 6:10; 11:15; 16:20];
x = size(A);
a = [1 1 1 1]
b = [1;1;1;1;1]
result = a*A*b
