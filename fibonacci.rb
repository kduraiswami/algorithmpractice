def create_fibonacci(sequence_length)
	p (1...(sequence_length).to_i).inject( [0, 1] ) { | fibonacci | fibonacci << fibonacci.last(2).inject(:+) }
end

create_fibonacci(4)