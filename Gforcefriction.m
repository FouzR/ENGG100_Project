function [G,F] = Gforcefriction(v,r,m,bankAng)

    G = (v^2/r)/9.81;

    if bankAng < 90 && bankAng > 0
        F = ((v^2/r)*m)/cos(bankAng);
    else
        disp('Invalid Bank Angle')
        F = 0;
    end

end