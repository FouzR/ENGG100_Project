function [G,F] = Gforcefriction(v,r,m,bankAng, ~)
g = 9.81;

    if bankAng < 90 && bankAng >= 0
        F = m*g*sind(bankAng)+(v^2*secd(bankAng))/r;
        G = (v^2)/(r*g)+(cosd(bankAng))^2;
    else
        msgbox('Invalid Bank Angle')
        F = 0;
        G = 0;
    end

end
