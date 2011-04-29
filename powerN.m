function ans = powerN(base, n)
	% Given base and n that are both 1 or more, compute recursively 
	% (no loops) the value of base to the n power, so powerN(3, 2) is 9 (3 squared). 

	% base case
	if n == 1
		ans = base;
	else 
		ans = base * powerN(base, n - 1);
	end
end
