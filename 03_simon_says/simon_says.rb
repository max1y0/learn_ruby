#write your code here
def echo(m)
	return m
end

def shout(m)
	return m.upcase	
end	

def repeat(m, n = 2)
	([m] * n).join(" ")
end

def start_of_word (m,n)
	return m[0...n]
end

def first_word (m)
	return m.split(" ").first
end

def titleize (m)
	words = m.split.map do |w|
		if w == "and" || w == "the" || w == "over"
			w
		else
			w.capitalize
		end
	end
	words.first.capitalize!
	words.join(" ")
end