function ans=factorial(index)
	% Given n of 1 or more, return the factorial of n, which is 
	% n * (n-1) * (n-2) ... 1. Compute the result recursively (without loops). 

	sign = 1;
	if index < 0 
		index = -1 * index;
		sign = -1;
	end

	if index == 0
		ans = 1;
	else
		ans = index * factorial(index - 1) * sign;
	end
end
