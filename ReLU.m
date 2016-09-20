% Course:   CMPEN 454   Section 1
% Authors:  Collin Baker
%           Brittany Chiu
%           Tim Lagnese
%           Anthony Marucci
% Date:     September 21, 2016
%
% Project 1
%
% File:     ReLU.m

% Note:     ReLU stands for Rectified Linear Unit, but despite the fancy name it is just a thresholding operation
%               where any negative numbers in the input become 0 in the output.
% Input:    A color image array in  of size N x M x D where N, M > 0.
% Output:   A modified matrix in which all the values less than 0 are
%                  changed to 0 (result: totally nonegative matrix)
function [ out ] = ReLU(in)
 
    out = max(in, 0);
    

end

