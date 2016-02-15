function  hex_grid = hexagonal_grid(size_y, size_x, step)
    cx = (size_x+1)/2;
    cy = (size_y+1)/2;

    points = [];
    points2 = [];

    points = direct_grid(cx,cy,points,step,size_x,size_y);

    nvx=cx + step/2; 
    nvy=cy - step*sqrt(3)/2;
    points2 = direct_grid(nvx,nvy,points2,step,size_x,size_y);

    points = [points;points2];

    hex_grid=points;
end