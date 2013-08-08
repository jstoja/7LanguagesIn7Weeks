rnd := Random value(0, 10) round
line := File standardInput;
att := 0
while(att < 10,
	test := line readLine("Test: ")
	num_test := test asNumber 
	if(num_test isNan, continue)
	if(num_test == rnd,
		"You Found !" println; break,
		if(num_test > rnd,
			"colder",
			"hotter") println
	) 
	att = att + 1
	if (att >= 10, "YOU LOOSE!" println)
)
