2DimList := List clone

2DimList dim := method(x, y,
	for(i, 1, y,
		tmp := List clone
		for(j, 1, x,
			tmp append(j)
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

2DimList dim(10, 10)
for (a, 0, 9,
	for(b, 0, 9,
		2DimList get(a, b) print
	)
	"" println
)
