local module = {}
module.name = ""

local consonants = {
    "b", "c", "d", "f", "g", "h", "j",
    "k", "l", "m", "n", "p", "q", "r",
    "s", "t", "v", "w", "x", "y", "z"
}

local vowels = {"a", "e", "i", "o", "u"}

function module.generate(length)
	for i = 0, length, 1 do
		local letter = ""

                letter = consonants[math.random(#consonants)]

		antletter = module.name:sub(i,i) or ""
		for ii, v in ipairs(consonants) do
			if antletter:lower() == v then
				letter = vowels[math.random(#vowels)]
			end	
		end

		if i == 0 then
			letter = letter:upper()
		end
		module.name = module.name .. letter
	end
	return module.name
end

return module
