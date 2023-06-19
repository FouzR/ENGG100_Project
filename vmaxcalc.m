
function vmax = vmaxcalc(r,ang_bank,TyreFriction)

g=9.81;

vmax=sqrt((r*g*(tand(ang_bank)-TyreFriction)/(1+TyreFriction*tand(ang_bank)));

end