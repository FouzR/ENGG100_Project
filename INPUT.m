function [m, coeffric] = INPUT
% Mess = msgbox('This is a program that takes in Velocity and Radius of curvature and outputs the G-Forces, and if the tyres will slip of not'); 
opts.Interpreter = 'tex';
X = inputdlg({'Enter Mass of Car (kg)', ...
    'Enter Desired Tire type (Soft/Hard)'}, 'Input', 1, {'0','0'}, opts);
m =  str2double(X{1});
    if strcmp(X{2},'hard') == 1
        coeffric = 0.7;
    elseif strcmp(X{2},'soft') == 1
        coeffric = 0.9;
    else
        msgbox('Please input a valid tire type')
    end
end