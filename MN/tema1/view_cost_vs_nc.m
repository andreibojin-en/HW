function view_cost_vs_nc(file_points)
	% TODO compute cost for NC = [1..10] and plot
	load (file_points,"points");
	cost = [];
	%construirea unui vector "cost" cu fiecare cost total pt un anumit numar de centroizi
	for i = 1:10
		cost(i) = compute_cost_pc(points,clustering_pc(points,i));
	endfor
	plot(cost);
end
