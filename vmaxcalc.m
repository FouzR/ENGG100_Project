function vmax = vmaxcalc(r,ang_bank,TyreFriction)

g=9.81

vmax=(r*g*cosd(ang_bank)*(TyreFriction*cosd(ang_bank)-sind(ang_bank)))^0.5

