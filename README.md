# Welcome to MATLAB!

## Introduction

You can find a lot of introductory MATLAB code in this repo.
 
## APPLICATIONS
### Lesson - 1
**Assignment- 1**
We borrowed $1000 at a 10% annual interest rate. If we did not make a payment for two years, and assuming there is no penalty for non-payment, how much do we owe now? (Compund interest)
```matlab
x=1000;
y=0.1;
t=2;
debt = x*(1+y)^t;
debt
```
**Assignment- 2**
 1. As of early 2018, Usain Bolt holds the world record in the men's 100-meter dash. It is 9.58 seconds. What was his average speed in km/h?  Assign the result to a variable called hundred.
 2. Kenyan Eliud Kipchoge set a new world record for men of 2:01:39 on September 16, 2018. Assign his average speed in km/h to the variable marathon. The marathon distance is 42.195 kilometers.
```matlab
%Converting distance in kilometers
distance1 = 100/1000; 
%Converting time in hours
time1 = 9.58/3600;    
%Calculating speed
hundred = distance1 / time1 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
distance2 = 42.195;
%Calculating and Converting time in hours
time2 = (121*60+39)/3600;
%Calculating speed
marathon = distance2 / time2
```
### Lesson - 2
**Assignment- 1**
1. Create a vector of all odd positive integers smaller than 100 in increasing order and save it into variable odds.
2. Create a vector of all even positive integers smaller than 100 in decreasing order and save it into variable evens.

```matlab
odds = 1:2:100
evens = 100:-2:1
```
**Assignment- 2**
 Given matrix A, assig the second column of A, to a variable v. Afterwards change each element of the last row of A to 0.
```matlab
A = [1:5; 6:10; 11:15; 16:20];
v = A(:,2);
A(end,:) = 0
```
**Assignment- 3**
 1. Crate a row vector of 1's that has same number of elements as A has rows
 2. Create a column vector of 1's that has the same number of elements as A has columns
Using matrix multiplication, assign the product of the row vector, the matrix A, and the column vector (in this oreder) to the variable result.
```matlab
A = [1:5; 6:10; 11:15; 16:20];
v = A(:,2);
A(end,:) = 0
```
### Lesson - 3
**Tri_area**
 Write a function called tri_area that returns the area of a triangle with base b and heigh h, where b and h are input arguments of the function in that order
 ```matlab
function area = tri_area(b,h)
area = (b*h)/2;
end
```
**corners**
Write a function called corners that takes a matrix as an input argument and returns four outputs: the elements at its four corners in this order: top_left, top_right, bottom_left and bottom_right. (Note that loops and if-statements are neither neces
 ```matlab
function [a,b,c,d]=corners(A)
[m,n] = size(A);
a=A(1,1); % Top left
b=A(1,n); % Top right
c=A(m,1); % Bottom left
d=A(m,n); % Bottom right
end 
```
**taxi_fare**
Write a function called taxi_fare that computes the fare of a taxi ride. It takes two inputs: the distance in kilometers (d) and the amount of wait time in minutes (t). 
The fare is calculated like this: 
* the first km is $5 
* every additional km is $2 
*  and every minute of waiting is $0.25. 

Once a km is started, it counts as a whole (Hint: consider the ceil built-in function). 
The same rule applies to wait times. You can assume that d >0 and t >= 0 but they are not necessarily integers. 
The function returns the fare in dollars. For example, a 3.5-km ride with 2.25 minutes of wait costs $11.75. Note that loops and if-statements are neither necessary nor allowed.
 ```matlab
function [fare] =taxi_fare (d,t)
a=ceil(d)
b=ceil(t)
fare=(b*0.25)+((a-1)*2)+5;
end
```
### Lesson - 4
**trio**
Write a function called trio that takes two positive integer inputs n and m. The function returns a 3n-by-m matrix called T. The top third of T (an n by m submatrix) is all 1s, the middle third is all 2-s while the bottom third is all 3-s.

 ```matlab
function [T] = trio(n,m)
a = ones(n,m);
b = 2*ones(n,m);
c = 3*ones(n,m);
T = [a;b;c];
end
```
**minimax**
Write a function called minimax that takes M, a matrix input argument andreturns mmrWrite a fu nction called minimax that takes M, a matrix input argument and  returns mmr, a row vector containing the absolute values of the difference between the maximum and minimum valued elements in each row. As a second output argument called mmm, it provides the difference between the maximum and minimum element in the entire matrix.
 ```matlab
function [mmr,mmm] = minimax(M)
mmr = abs(max(M.')-min(M.')); 
mmm = max(max(M)) - min(min(M)); 
end
```
### Lesson - 5
**eligible**
Write a function called eligible that helps the admission officer of the Graduate School of Vanderbilt University decide whether the applicant is eligible for admission based on GRE scores. The function takes two positive scalars called v and q as input. They represent the percentiles of the verbal and quantitative portions of the GRE respectively. You do not need to check the input. The applicant is eligible if the average percentile is at least 92% and both of the individual percentiles are over 88%. The function returns the logical true or false.
 ```matlab
function admit = eligible(v,q)
avg=(v+q)/2;

if avg>=92 && v>88 && q>88
    admit=1;
else
    admit=0;
end
```
**picker**
Write a function called picker that takes three input arguments called condition, in1 and in2 in this order. The argument condition is a logical. If it is true, the function assigns the value of in1 to the output argument out,  otherwise, it assigns the value of in2 to out. 
 ```matlab
function [out] = picker(condition,in1,in2)
if condition == 1
    out = in1;
else
    out = in2;
end
end
```
**under_age**
Write a function called unde_age that takes two positive integer scalar arguments:
1. age that represent someone's age, and
2. limit that represent an age limit

The function resturns true if the person is younger that the age limit. If the second argument, limit is not provided, it defaults to 21. You do not need to checkt that the input are positive integer sclars. The name of the output argument is too_young

 ```matlab
function too_young= under_age(age, limit)
if (nargin<2)
    limit=21;
end
if (age<limit)
    too_young=true;
else
    too_young=false;
end
end
```
**valid_date**
Write a function called valid_date that takes three positive integer scalar inputs year, month, day. If these three represent a valid date, return a logical true, otherwise false. The name of the output argument is valid. If any of the inputs is not a positive integer scalar, return false as well. Note that every year that is exactly divisible by 4 is a leap year, except for years that are exactly divisible by 100. However, years that are exactly divisible by 400 are also leap years. For example, the year 1900 was not leap year, but the year 2000 was.
 ```matlab
function valid = valid_date(y,m,d)
if ~isscalar(y)||~isscalar(m)||~isscalar(d)
    valid=0;
else
   if m>=1&&m<=12
       if m==1||m==3||m==5||m==7||m==8||m==10||m==12
           if d>=1&&d<=31
               valid=1;
           else
               valid=0;
           end
       elseif m==4||m==6||m==9||m==11
           if d>=1&&d<=30
               valid=1;
           else
               valid=0;
           end
       else
           if rem(y,100)==0
               if rem(y,400)==0
                   if d>=1&&d<=29
                       valid=1;
                   else
                       valid=0;
                   end
               else
                   if d>=1&&d<=28
                       valid=1;
                   else
                       valid=0;
                   end
               end
           elseif rem(y,4)==0
               if d>=1&&d<=29
                   valid=1;
               else
                   valid=0;
               end
           else
               if d>=1&&d<=28
                   valid=1;
               else
                   valid=0;
               end
           end
       end
   else
       valid=0;
   end
end
```
### Lesson - 6
**freezing**
Write a function called freezing that takes a vector numbers that correspond todaily low temperatures in Fahrenheit. REturn numfreeze, the number of days with sub freezing temperatures (that is, lower than 31 F) without using loops.
 ```matlab
function numfreeze = freezing(A)
x = A(A<32);
numfreeze = length(x);
end
```
**halfsum**
Write a function called halfsum that takes as input a matrix and computes the sum of its elements that are in the diagonal and are to the right of it. The diagonal is defined as the set of those elements whose column and row indexes are the same. In other words, the functioon adds up the element in the uppertriangular part of the martix. The name of the output is summa.
 ```matlab
function summa = halfsum(A)
[row col] = size(A);
summa = 0;
for ii = 1:row
    for jj = 1:col
        if ii>jj
           A(ii,jj) = 0;
        else
            summa = summa + A(ii,jj);
        end
    end
end 
```
**next_prime**
Write a function called next_prime that takes a scalar positive integer input n. Use a while-loop to find and return k, the samllest prime number that is greater than n. Feel free to use the built-in isprime function.
 ```matlab
function k = next_prime(n)
k = n+1;
while ~(isprime(k))
    k = k + 1;
end
```
**max_sum**
Write a function called max_sum that takes v, a row vector of numbers, and n, a positive integer as inputs.  The function needs to find the n consecutive elements of v whose sum is the largest possible. In other words, if v is [1 2 3 4 5 4 3 2 1] and n is 3, it will find 4 5 and 4 because their sum of 13 is the largest of any 3 consecutive elements of v. If multiple such sequences exist in v, max_sum returns the first one. The function returns summa, the sum as the first output argument and index, the index of the first element of the n consecutive ones as the second output. If the input n is larger than the number of elements of v, the function returns 0 as the sum and -1 as the index. 
 ```matlab
function [summa index] = max_sum(v,n)
maxv=0;
ind=-1;
if n>length(v)
    summa=0;
    index=-1;
else
    for i=1:n
        maxv=sum(v(1:n));
        ind=1;
    end
    for j=2:(length(v)-n+1)
        total=0;
        total=sum(v(j:(j+n-1)));
        if total>maxv
            maxv=total;
            ind=j;
        else
            continue;
        end
    end
end
summa = maxv;
index = ind;
```
### Lesson - 7
Caesar's cypher is the simplest encryption algorithm. It adds a fixed value to the ASCII (unicode) value of each character of a text. In other words, it shifts the characters. Decrypting a text is simply shifting it back by the same amount, that is, it substract the same value from the characters. Write a function called caesar that accepts two arguments: the first is the character vector to be encrypted, while the second is the shift amount. The function returns the output argument coded, the encrypted text. The function needs to work with all the visible ASCII characters from space to ~. The ASCII codes of these are 32 through 126. If the shifted code goes outside of this range, it should wrap around. For example, if we shift ~ by 1, the result should be space. If we shift space by -1, the result should be ~.
 ```matlab
function coded= caesar(string,shift)
value=string+shift;

for i=1:length(value)
    while value(i)<32
        value(i)=value(i)+95;
    end
    while value(i)>126 
        value(i)=value(i)-95;
    end

end
coded=char(value);
```
**sparse2matrix**
A sparse matrix is a large matrix with almost all elements of the same value (typically zero). The normal representation of a sparse matrix takes up lots of memory when the useful information can be captured with much less. A possible way to represent a sparse matrix is with a cell vector whose first element is a 2-element vector representing the size of the sparse matrix. The second element is a scalar specifying the default value of the sparse matrix. Each successive element of the cell vector is a 3-element vector representing one element of the sparse matrix that has a value other than the default. The three elements are the row index, the column index and the actual value.  Write a function called "sparse2matrix" that takes a single input of a cell vector as defined above and returns the output argument called "matrix", the matrix in its traditional form.
 ```matlab
function matrix = sparse2matrix (cellvec)
    m = cellvec{1}(1,1);
    n = cellvec{1}(1,2);
    defult = ones(m,n) .* cellvec{1,2};
    
    for i= 3:length(cellvec)
        r1 = cellvec{i}(1,1); 
        c1 = cellvec{i}(1,2);
        defult(r1,c1) = cellvec{i}(1,3);
    end
    matrix = defult;
end
```
### Lesson -8 
**char_counter**
Write a function called char_counter that counts the number of a certain character in a text file. The function takes two input arguments, fname, a char vector of the filename and character, the char it counts in the file. The function returns charnum, the number of characters found. If the file is not found or character is not a valid char, the function return -1. 
```matlab
function charnum = char_counter(fname,ch)
fid=fopen(fname,'rt');
if fid<0
    charnum=-1;
    return;
end
oneline = fgets(fid);
str=[oneline];
while ischar(oneline)
    oneline=fgets(fid);
    str=[str oneline];
end
count = 0;
if (ischar(ch))
    for i=1:numel(str)
        if ch==str(i)
            count=count+1;
        else
            continue;
        end
    end
    charnum=count;
else
    charnum = -1;
end
```
**get_distance**
Distances.xlsx file contains a spreadsheet with the pairwise distances in miles of the top 100 US cities by population. A preview of the spreadsheet is shown below. The first row and first column contain the city names using the following format: city name comma space capitalized state abbreviation, e.g., Nashville, TN. Note that the very first cell of the spresheet, A1, is blank. Write a function called get_distance that accepts two character vector inputs representing the names of two cities. The function returns the distance between them as an output argument called distance. For example, the call get_distance('Seattle, WA','Miami, FL') should return 3723. If one or both of the specified cities are not in the file, the function returns -1.
```matlab
function distance = get_distance(x,y)
[~,~,raw] = xlsread('Distances.xlsx');
[a b]=size(raw);q=0;w=0;
for i = 2:a
    if strcmp(raw{i,1},x)==1
        q=i;
    end
end
for j = 2:b
    if strcmp(raw{1,j},y)==1
        w=j;
    end
end
if q>1 && w>1
    distance = raw{q,w};
else 
    distance = -1;
end
```
# Some Advance Problems to Solve
**saddle**
Saddle Point
Write a function called saddle that finds saddle points in the imput matrix M. For the purposes of this problem, a saddle point is defined as  an element whose value is greater than or equal to every element in its row, and less than or equal to every element in its column. Note that there may be more than one saddle point in M. Return a matrix indices that has exactly two columns. Each row of indices corresponds to one saddle point with the first element of the row containing the row index of the saddle point and the second column containing the column index. The saddle points are provided in indices in the same order they are located in M according to column-major ordering. If there is no saddle point in M, then indices is the empty array.
```matlab
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

```
**blur**
Image Blur
Write a function called blur that blurs the input image. The function is to be called like this:
```
output = blur(img,w);
```
where img, the input image is a two-dimensional matrix of grayscale pixel values between 0 and 255. Blurring is to be carried out by averaging the pixel values in the vicinity of every pixel. Specifically, the output pixel value is the mean of the pixels in a square submatrix of size 2w+1 where the given pixel sits in the center. For example, if w is 1, then we use a 3x3 matrix, that is, we average all the neighboring pixels of the given pixel and itself. Only use valid pixels when portions of the blurring matrix fall outside the image. For example, the blurred value corresponding to w = 1 at index (1,1) would be the mean of of elements (1,1), (1, 2), (2,1) and (2, 2). Both input img and output output are of type uint8.
```matlab
function output = blur(img,w)
B=double(img);
[m,n] = size(B);
k=2*w+1;
for i = 1:m
    for j = 1:n
        p=i-fix(k/2);
        q=i+fix(k/2);
        r=j-fix(k/2);
        s=j+fix(k/2);
        if p<1
            p=1;
        end
        if q>m
            q=m;
        end
        if r<1
            r=1;
        end
        if s>n
            s=n;
        end
        A=B([p:q],[r:s]);
        C(i,j)=mean(A(:));
    end
end
output=uint8(C);
end
```
