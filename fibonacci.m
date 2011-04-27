function ans=fibonacci(index)
	% Computes nth term of fibonacci sequence

	if index < 0 
		ans = -1;
	elseif index == 0 
		ans = 0;
	elseif index == 1 
		ans = 1;
	else
		ans = fibonacci(index - 2) + fibonacci(index - 1);
	end
end
