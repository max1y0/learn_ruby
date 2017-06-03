#write your code here
def translateWord (m)
	firstc = m.chars.first
	case m
	when /^[aeiouy]/ 					#regular expression for leading vowels
		m + "ay"
	when /^(qu+)(.*)/ 					#regular expression for leading qu. $1= qu $2 = rest
		$2+$1+"ay"	
  when /^([^aeiouy])(qu+)(.*)/      #regular expression for leading consonants (not vowels) $1= complement of aeiou(consonant). $2 = rest
    $3+$1+$2+"ay"
	when /^([^aeiouy]+)(.*)/			#regular expression for leading consonants (not vowels) $1= complement of aeiou(consonant). $2 = rest
		$2+$1+"ay"
	else
		m
	end
end


def translate (m)
	res = []
	m.split.each do |w|
		res<<translateWord(w)
	end
	return res.join(" ")
end