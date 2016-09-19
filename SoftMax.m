% Course:   CMPEN 454   Section 1
% Authors:  Collin Baker
%           Brittany Chiu
%           Tim Lagnese
%           Anthony Marucci
% Date:     September 21, 2016
%
% Project 1
%
% File:     SoftMax.m

% Input:    A color image array in  of size 1 x 1 x D where D > 0.
% Output:   An array of dimensions 1 x 1 x D but each value is a probability
%            and they all add to 1.
function [ out ] = SoftMax( in )

    % Get last dimension
    D = ndims(ndims(in));
    
    % alpha is the max of a fixed first row, first column of all three
    % channels, get max of 1 to k
    alpha = double(max(in(1,1,:)));
    
    % out should match in, we are now going to change the values
    out = double(in);
    sum = 0;
    
    % Find sum
    for k=1:D;
        sum = double(sum + exp(in(1,1,k)-alpha));
    end
    
    % Calculate SoftMax for each k
    for k=1:D
       out(1,1,k) = ( exp(in(1,1,k)-alpha) )/ sum;
    end
end

