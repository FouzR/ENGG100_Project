function F = frictioncalc(r,ang_bank,TyreFriction,m)

g=9.81

F=TyreFriction*m*g*cosd(ang_bank)
