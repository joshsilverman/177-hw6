function sploded = stringSplosion(string) 
	% Given a non-empty string like "Code" return a string like "CCoCodCode". 
	
	sploded = "";
	for i = 1:length(string)
		sploded = strcat(sploded, string(1:i));
	end
end
