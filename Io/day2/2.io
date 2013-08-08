Number normal_division := Number getSlot("/") 
Number / = method(number, if(number == 0, 0, normal_division(number)))
42/2 println
42/1 println
42/0 println

