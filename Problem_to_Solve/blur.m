%% Problem - 2
% Image Blur
% Write a function called blur that blurs the input image. The function is
% to be called like -> output = blur(img,w);
% where img, the input image is a two-dimensional matrix of grayscale pixel 
% values between 0 and 255. Blurring is to be carried out by averaging the 
% pixel values in the vicinity of every pixel. Specifically, the output pixel 
% value is the mean of the pixels in a square submatrix of size 2w+1 where 
% the given pixel sits in the center. For example, if w is 1, then we use 
% a 3x3 matrix, that is, we average all the neighboring pixels of the given 
% pixel and itself. Only use valid pixels when portions of the blurring matrix 
% fall outside the image. For example, the blurred value corresponding to w = 1 
% at index (1,1) would be the mean of of elements (1,1), (1, 2), (2,1) and (2, 2). 
% Both input img and output output are of type uint8.
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
