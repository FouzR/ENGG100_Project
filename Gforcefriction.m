function [G,F] = Gforcefriction(v,r,m,bankAng)
g = 9.81;

    if bankAng < 90 && bankAng >= 0
        F = ((v^2/r)*m)/cosd(bankAng) + m*g*tand(bankAng);

        G = ((v^2/r)+(m*g*sind(bankAng)))/g;
    else
        msgbox('Invalid Bank Angle')
        F = 0;
        G = 0;
    end

end
