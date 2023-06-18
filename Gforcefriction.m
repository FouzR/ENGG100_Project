function [G,F] = Gforcefriction(v,r,m,bankAng, friction_on_tyres)
g = 9.81;

    if bankAng < 90 && bankAng >= 0
        F = ((v^2/r)*m)/cosd(bankAng) + m*g*tand(bankAng);

        %G1 = ((v^2/r)+(m*g*sind(bankAng)))/g;
        G = (friction_on_tyres*cosd(bankAng)+sind(bankAng))/(cosd(bankAng)-friction_on_tyres*sind(bankAng));
    else
        msgbox('Invalid Bank Angle')
        F = 0;
        %G1 = 0;
        G = 0;
    end

end
