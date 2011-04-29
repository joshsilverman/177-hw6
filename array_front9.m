function front9 = array_front9(array)
	% Given an array of ints, return true if one of the first 4 elements 
	% in the array is a 9. The array length may be less than 4. 	

	front9 = false;
	for i = 1:length(array)
		if array(i) == 9
			front9 = true;
			break;
		if i == 4
			break;
		end
	end
end
