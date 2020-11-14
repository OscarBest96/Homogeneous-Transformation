function [transformation] = Z_Rotation(theta,x,y,z)

%This function is used for rotations about the Z axis only
%this function takes parameters: theta(joint angle), x,y and z for
%translation displacement.
%the resulting homogeneous transformation is returned.

transformation = [cos(theta) -sin(theta) 0 x; sin(theta) cos(theta) 0 y; 0 0 1 z; 0 0 0 1;];

end

