function span = maxSpan(array)
	% Consider the leftmost and righmost appearances of some value in an array. 
	% We'll say that the "span" is the number of elements between the two inclusive. 
	% A single value has a span of 1. Returns the largest span found in the given 
	% array. (Efficiency is not a priority.) 	

	span = 0;
	array_len = length(array);
	
	for i = 1:array_len
		val = array(i);

		for k = array_len:-1:1
			if (array(i) == array(k))
				_span = k - i + 1;
				if (_span > span)
					span = _span;
				end
				break
			end		
		end	
	end

end
