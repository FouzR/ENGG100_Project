function [Velocity, Radius_of_curvature] = INPUT
% Mess = msgbox('This is a program that takes in Velocity and Radius of curvature and outputs the G-Forces, and if the tyres will slip of not'); 
opts.Interpreter = 'tex';
X = inputdlg({'Enter Velocity of the car(m/s^{2})', ...
    'Enter Radius of curvature of the corner'}, 'Input', 1, {'0','0'}, opts);
Velocity =  str2double(X{1});
Radius_of_curvature = str2double(X{2});
end