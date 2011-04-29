function ans = has23(array)
	% Given an int array length 2, return true if it contains a 2 or a 3. 

	ans = false;
	for i = 1:length(array)	
		if array(i) == 2 || array(i) == 3
			ans = true;
			break;	
		end
	end

end
