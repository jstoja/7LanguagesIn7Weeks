fibonacci := Object clone

fibonacci fib_rec := method(x, if(x-1 == 0 or x-1 == 1, 1, fib_rec(x-1) + fib_rec(x-2)))
fibonacci fib_it  := method(x,
	nmm := 1
	nm  := 1
	r 	:= 0
	i 	:= 3
	while(i <= x,
		r = nmm + nm
		nmm = nm
		nm = r
	; i = i + 1)
	nm
)

fibonacci fib_rec(8) println
fibonacci fib_it(8) println