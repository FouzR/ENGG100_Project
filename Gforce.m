function f = Gforce(a,m,r,turn) %the variables here are for acceleration, mass of vehicle, radius of curvature of the turn and t is for whether the car is turning or going in a straight path

g=9.81;

if turn == 0
    G=(g^2+a^2)^0.5/g;
    disp (['The G force acting on the vehicle is ',num2str(G),' g']);

elseif turn == 1
    ang_bank=input('Enter banking angle (degrees): ');
    t= input('Enter the time at which you want to calculate G force: ');
    a=1 %will add function to calculate acceleration at t
    v=1 %will add function to calculate velocity at t
    G= (g*cos(ang_bank)+a^2+(v^2/r)^2)^0.5/g
    disp(['The G force acting on the vehicle is ',num2str(G),' g']);

else 
    disp('Invalid input for turn');

end

    


