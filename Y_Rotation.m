function [transformation] = Y_Rotation(theta,x,y,z)

%This function is used for rotations about the Y axis only
%this function takes parameters: theta(joint angle), x,y and z for
%translation displacement.
%the resulting homogeneous transformation is returned.

transformation = [cos(theta) 0 sin(theta) x; 0 1 0 y; -sin(theta) 0 cos(theta) z; 0 0 0 1;];

end

