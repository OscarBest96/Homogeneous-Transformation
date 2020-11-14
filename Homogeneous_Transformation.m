
%This script has been created to demonstrate the homogeneous
%transformations between frames of the ORBO left leg. 


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%% body_link -> l_hip_yaw_link (q0 -> q1) %%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

theta = 0; %no rotation currently
x = 0;
y = 0.035; %origin is shifted over the y-axis of body_link by 0.035 meters
z = 0;

T1 = Z_Rotation(theta,x,y,z);


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%% l_hip_yaw_link -> l_hip_roll_link (q1 -> q2) %%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

theta = 0; %no rotation currently
x = -0.024; %origin is shifted over the x-axis by -0.024 meters
y = 0; 
z = -0.0285; %origin is shifted over the z-axis by -0.0285 meters

T2 = X_Rotation(theta,x,y,z);


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%% l_hip_roll_link -> l_hip_pitch_link (q2 -> q3) %%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

theta = 0; %no rotation currently
x = 0.0241; %origin is shifted over the x-axis by 0.0241 meters
y = 0.019; %origin is shifted over the y-axis by 0.019 meters
z = 0; 

T3 = Y_Rotation(theta,x,y,z);


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%% l_hip_pitch_link -> l_knee_link (q3 -> q4) %%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

theta = 0; %no rotation currently
x = 0; 
y = 0; 
z = -0.11015; %origin is shifted over the z-axis by -0.11015 meters

T4 = Y_Rotation(theta,x,y,z);


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%% l_knee_link -> l_ank_pitch_link (q4 -> q5) %%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

theta = 0; %no rotation currently
x = 0; 
y = 0; 
z = -0.11; %origin is shifted over the z-axis by -0.11 meters

T5 = Y_Rotation(theta,x,y,z);


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%% l_ank_pitch_link -> l_ank_roll_link (q5 -> q6) %%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

theta = 0; %no rotation currently
x = -0.0241; %origin is shifted over the x-axis by -0.0241 meters
y = -0.019; %origin is shifted over the y-axis by -0.019 meters
z = 0; 

T6 = X_Rotation(theta,x,y,z);


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%% OVERALL TRANSFORMATION %%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% body_link -> l_ank_roll_link =

Transformation = T1*T2*T3*T4*T5*T6;

%provides the position vector of the end frame (wrt it's frame)
x=0;
y=0;
z=0;
positionVector = [x; y; z; 1];

%function returns position vector (wrt the inertial reference frame)
[position] = PositionFromRefFrame(Transformation,positionVector);





