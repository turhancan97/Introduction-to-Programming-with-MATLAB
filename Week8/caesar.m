%% Asignment - 1
% Ceasar's cypher is the simplest encryption algorithm. It adds a fixed value 
% to the ASCII (unicode) value of each character of a text. In other words, 
% it shifts the characters. Decrypting a text is simply shifting it back by 
% the same amount, that is, it substract the same value from the characters. 
% Write a function called caesar that accepts two arguments: the first is the 
% character vector to be encrypted, while  the second is the shift amount. 
% The function returns the output argument coded, the encrypted text. 
% The function needs to work with all the visible ASCII characters from space 
% to ~. The ASCII codes of these are 32 through 126. If the shifted code goes 
% outside of this range, it should wrap around. For example, if we shift ~ 
% by 1, the result should be space. If we shift space by -1, the result
% should be ~.

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

