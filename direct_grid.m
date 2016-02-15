function points = direct_grid(cx,cy,points,step,size_x,size_y)
	% vers la droite
	posy=cy;
	% ligne centrale
	points=center2line(cx,posy,step,size_x,points);
	 
	points = sort(points);

	coeff = sqrt(3);

	% vers la droite
	posy=cy;

	for posy=cy+step*coeff:step*coeff:size_y
		points = center2line(cx,posy,step,size_x, points);
	end

	for posy=cy-step*coeff:-step*coeff:1
		points = center2line(cx,posy,step,size_x, points);
	end
end