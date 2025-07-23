a: c
	echo "A!"

b: && d
	echo "B!"

c:
	echo "C!"

d:
	echo "D!"

e: a && b
	echo "E!"
