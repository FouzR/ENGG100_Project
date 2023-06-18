function G = Gforce(v,r,ang_bank) %the variables here are for angular speed, radius of curvature of the turn and t is for whether the car is turning or going in a straight path

g=9.81; %Setting value for gravity

if r>=0
    G= ((g*(cosd(ang_bank))^2)^2+((v^2/r)+(g*cosd(ang_bank)*sind(ang_bank)))^2)^0.5/g; %Calculating G force for car in Uniform circular motion
    

else 
    disp('Invalid input');

end