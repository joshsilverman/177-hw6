function count = bunnyEars(n)
	% We have a number of bunnies and each bunny has two big floppy ears. 
	% We want to compute the total number of ears across all the bunnies 
	% recursively (without loops or multiplication). 

	count = 2;
	if n > 1
		count += bunnyEars(n - 1);
	elseif n < 1
		count = 0;
	end
	
end
