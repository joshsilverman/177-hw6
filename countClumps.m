function count = countClumps(vector)
	% Say that a "clump" in an array is a series of 2 or more adjacent 
	% elements of the same value. Return the number of clumps in the given array. 

	count = 0;
	if length(vector) > 1
		last_element = vector(1);
		in_clump = false;
		for i = 2:length(vector)
			if vector(i) == last_element
				if in_clump == false
					count++;
				end
				in_clump = true;
			else
				in_clump = false;
			end
			last_element = vector(i);
		end
	end
end
