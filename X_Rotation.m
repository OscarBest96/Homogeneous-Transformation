function [transformation] = X_Rotation(theta,x,y,z)

%This function is used for rotations about the X axis only
%this function takes parameters: theta(joint angle), x,y and z for
%translation displacement.
%the resulting homogeneous transformation is returned.

transformation = [1 0 0 x; 0 cos(theta) -sin(theta) y; 0 sin(theta) cos(theta) z; 0 0 0 1;];

end

