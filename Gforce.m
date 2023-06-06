function f = Gforce(a,m,r,t) %the variables here are for acceleration, mass of vehicle, radius of curvature of the turn and t is for whether the car is turning or going in a straight path

g=9.81;

if t == 0
    G=(g^2+a^2)^0.5/g;
    disp (['The G force acting on the vehicle is ',num2str(G),' g']);

elseif t == 1
    

else 
    disp('Invalid input for turn');

end

    


