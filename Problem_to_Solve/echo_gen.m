%% Problem - 3
% Echo Generator
% Write a function called echo_gen that adds an echo effect to audio
% recording. where input is a column vector with values between -1 and 1 
% representing a time series of digitized sound data. The input argument
% fs is the sampling rate. The sampling rate specifies how many samples we
% have in the data each second. For example, an audio CD uses 44,100 samples 
% per second. The input argument delay represent the delay of the echo in seconds. 
% That is, the echo should start after delay seconds have passed from the start 
% of the audio signal. Finally, amp specifies the amplification of the echo which 
% normally should be a value less than 1, since the echo is typically not as 
% loud as the original signal. 
% The output of the function is a column vector containing the original 
% sound with the echo superimposed. The output vector will be longer than 
% the input vector if the delay is not zero (round to the nearest number 
% of points needed to get the delay, as opposed to floor or ceil). A sound 
% recording has values between -1 and 1, so if the echo causes some values 
% to be outside of this range, you will need to normalize the entire vector, 
% so that all values adhere to this requirement. 

function output = echo_gen(s, Fs, delay, amp)
    % Find the time between points using Fs
    dt = 1/Fs;
    % Calculate the number of points for the given delay
    N = round(delay/dt);
    % Pad the original signal with zeros to make room for the echo
    s1 = [s; zeros(N, 1)];
    % Create an echo signal that starts with 0's
    s2 = [zeros(N, 1); s.*amp];
    % Add the echo to the original signal
    output = s1 + s2;
    % the abs of all values must be < 1. Rescale if necessary
    if max(abs(output)) > 1
        output = output./max(abs(output));
    end
    
    % Note: This only works with column vectors - can you make the
    % function more robust so that it works with column or row vectors?
end
