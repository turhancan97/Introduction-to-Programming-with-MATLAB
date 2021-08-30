%% Assignment - 2
% Write a function called corners that takes a 
% matrix as an input argument and returns four 
% outputs: the elements at its four corners in this order: 
% top_left, top_right, bottom_left and bottom_right. (Note that loops and 
% if-statements are neither neces

function [a,b,c,d]=corners(A)
[m,n] = size(A);
a=A(1,1); % Top left
b=A(1,n); % Top right
c=A(m,1); % Bottom left
d=A(m,n); % Bottom right
end 