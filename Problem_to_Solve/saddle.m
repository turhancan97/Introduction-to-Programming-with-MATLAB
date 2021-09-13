%% Problem - 1
% Saddle Point
% Write a function called saddle that finds saddle points in the imput
% matrix M. For the purposes of this problem, a saddle point is defined as 
% an element whose value is greater than or equal to every element in its row,
% and less than or equal to every element in its column. Note that there may 
% be more than one saddle point in M. Return a matrix indices that has exactly 
% two columns. Each row of indices corresponds to one saddle point with the 
% first element of the row containing the row index of the saddle point and 
% the second column containing the column index. The saddle points are provided 
% in indices in the same order they are located in M according to column-major ordering. 
% If there is no saddle point in M, then indices is the empty array.

function indices=saddle(M)
[m,n] = size (M);
indices=[];%we want an empty matrix if there r no saddle points
for i=1:m; %going thru all the rows and each element of the row.
    maxi=max(M(i,:));% finding the max of the elements of the specific row.
    for j=1:n;% running thru all the coloumns and each element of the column .
        mini=min(M(:,j));% finding the min of the elements of each column.
        if maxi==mini%checking if the max of a row is same as the min of a column, if yes then 
            indices=[indices;i j];% indices will give null matrix in first column and i and j in the next row 
        end
    end
end
