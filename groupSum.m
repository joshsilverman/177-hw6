function found = groupSum(start, ints, target)
	% Given an array of ints, is it possible to choose a group of some of 
	% the ints, such that the group sums to the given target? This is a classic
	% backtracking recursion problem. Once you understand the recursive 
	% backtracking strategy in this problem, you can use the same pattern 
	% for many problems to search a space of choices. Rather than looking at 
	% the whole array, our convention is to consider the part of the array 
	% starting at index start and continuing to the end of the array. The 
	% caller can specify the whole array simply by passing start as 0. No 
	% loops are needed -- the recursive calls progress down the array. 

	% base case - no ints left to add
	ints = ints(start:end);
	if (length(ints) == 0)  
		if (target == 0)
			found = true;
		else
			found = false;
		end
	else
		% recursive call with sum including first int
		found = groupSum(1, ints(2:end), target - ints(1));

		% if first found came back negative
		% recursive call with sum not including first int
		if (!found) 
			found = groupSum(1, ints(2:end), target);
		end
	end

end
