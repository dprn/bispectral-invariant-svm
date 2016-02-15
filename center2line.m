function points_out=center2line(cx,posy,step,size_x,points)
 points_out =[];
	for posx=cx:step:size_x
		points_out = [ points_out; posx,posy];  
	end

	for posx=cx-step:-step:1
		points_out = [ points_out; posx,posy];  
	end

	points_out = sort(points_out);
	points_out = [points; points_out];
end