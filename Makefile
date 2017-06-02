a.out:json.o demo.o
	g++ json.o demo.o
json.o : json.h json.cpp
	g++ -c json.cpp
demo.o:demo.cpp json.h
	g++ -c demo.cpp

.PHONY:clean
clean:
	rm -f a.out json.o demo.o
