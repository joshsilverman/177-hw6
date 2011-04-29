function c = count7(n)
	% Given a non-negative int n, return the count of the occurrences of 7 as a digit, 
	% so for example 717 yields 2. (no loops). Note that mod (%) by 10 yields the rightmost 
	% digit (126 % 10 is 6), while divide (/) by 10 removes the rightmost digit (126 / 10 is 12). 

	last_digit = mod(n, 10);
	if (last_digit == 7) 
		c = 1;
	else
		c = 0;
	end

	if (n > 9)
		new_n = (n - last_digit) / 10;
		c += count7(new_n);
	end

end
