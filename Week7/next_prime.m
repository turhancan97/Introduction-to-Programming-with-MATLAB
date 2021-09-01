%% Assignment - 2
% Write a function called next_prime that takes a scalar positive integer
% input n. Use a while-loop to find and return k, the samllest prime number
% that is greater than n. Feel free to use the built-in isprime function.
function k = next_prime(n)
k = n+1;
while ~(isprime(k))
    k = k + 1;
end