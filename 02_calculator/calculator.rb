#write your code here
def add (n,m)
	n+m
end

def subtract (n,m)
	n-m
end

def sum (a)
	acum = 0
	a.each do |i|
		acum = acum +i
	end
	return acum
end

def mult (a)
	acum = 1
	a.each do |i|
		acum = acum *i
	end
	return acum
end