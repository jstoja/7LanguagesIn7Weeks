2DimList := List clone

2DimList dim := method(x, y,
	for(i, 1, y,
		tmp := List clone
		for(j, 1, x,
			tmp append(i*j)
		)
		self append(tmp)
	)
)

2DimList set := method(x, y, value
	self at(y) atPut(x, value)
)

2DimList get := method(x, y,
	self at(y) at(x)
)

2DimList transpose := method(
	new_matrix := 2DimList clone
	for(i, 0, self size - 1,
		new_matrix append(self at(self size - i - 1) reverse)
	)
	new_matrix
)

2DimList dump := method(
	for (a, 0, self size,
		self at(a) println
	)
)

2DimList writeToFile := method(filename,
	File with(filename) openForUpdating write(self serialized) close
)

2DimList readFile := method(filename,
	doFile(filename)
)

2DimList dim(5, 5)
2DimList writeToFile("test.matrix")
lol := 2DimList readFile("test.matrix")
lol println
