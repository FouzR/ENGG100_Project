tyretype=input('Please select a tyre type (soft/hard): ','s');
if tyretype=='soft'
    coeffric=0.9;
elseif tyretype=='hard'
    coeffric=0.7;
else
    msgbox('please select an appropriate tyre type (soft/hard)','error')
end
t=0;
maxlateralfriction=coeffric*car_weight*9.81;
for t=0:tmax
    lateralfriction(t)=centripetal_force;
    if lateralfriction>maxlateralfriction
        msgbox('Tyre may lose grip and cause the car to slip','Caution!')
    continue
    end
end
plot(t,lateralfriction)
 
    