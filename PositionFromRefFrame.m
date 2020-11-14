function [position] = PositionFromRefFrame(Transformation,positionVector)

%this function accepts parameters of the homogeneous tranformation matrix and the
%end frame's position vector and returns the position vector as seen from the inertial
%reference frame

position = Transformation*positionVector;

end

