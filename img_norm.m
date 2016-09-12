% Course:   CMPEN 454   Section 1
% Authors:  Collin Baker
%           Brittany Chiu
%           Tim Lagnese
%           Anthony Marucci
% Date:     September 21, 2016
%
% Project 1
%
% File:     img_norm.m

% Input:    A color image array of size N x M x 3 where N, M > 0.
% Output:   A matrix of size N x M x 3 whose elements are scaled into range
%           [-0.5, 0.5]
function out = img_norm(img_mtrx)
    out = img_mtrx ./ 255.0 - 0.5;
end
