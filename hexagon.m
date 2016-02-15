function coords = hexagon(x,y,xc,yc,bornInfx,bornSupx,bornInfy,bornSupy)

% hexagon coordinates
%
%         2 _ 3 
%        /      \
%       1   c   4
%        \      /
%         6 _ 5 
%
%  ----> xc
%  |
%  | yc
%  y
%

coords = [];
if(abs(x-xc)>=1) &&  (abs(y-yc)>=1)
    v = [x-xc, y-yc]';

    for theta=0:pi/3:(2*pi-pi/3)
        R = [cos(theta), -sin(theta); sin(theta), cos(theta)];
        vR = R*v;
        p = [xc,yc] + vR';
        p = [p(2),p(1)];
        if(p(2)>bornInfx) && (p(2)<bornSupx) && (p(1)>bornInfy) && (p(1)<bornSupy)
        coords = [coords; p];
        else
            continue
        end
    end
else
   coords = [1,1]; 
end

end