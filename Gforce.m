function f = Gforce(v,r,turn) %the variables here are for angular speed, radius of curvature of the turn and t is for whether the car is turning or going in a straight path

g=9.81; %Setting value for gravity

if turn == 0 %G force on car travelling in a straight path
    a=input('Enter acceleration of the car: ')
    G=((g^2+a^2)^0.5)/g;
    disp (['The G force acting on the vehicle is ',num2str(G),' g']);

elseif turn == 1
    ang_bank=input('Enter banking angle (degrees): '); %Taking input for the banking angle
    G= ((g*(cos(ang_bank))^2)^2+((v^2/r)+(g*cos(ang_bank)*sin(ang_bank)))^2))^0.5/g %Calculating G force for car in Uniform circular motion
    disp(['The G force acting on the vehicle is ',num2str(G),' g']);

else 
    disp('Invalid input for turn');

end
