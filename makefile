all: demo_tsp_instance_reader

demo_tsp_instance_reader: main.o tsp_instance_reader.o
	g++ main.o tsp_instance_reader.o -o reader
	
main.o: main.cpp
	g++ -c -g -std=c++11 -MMD -MP -MF main.o.d -o main.o main.cpp

tsp_instance_reader.o: tsp_instance_reader.cpp tsp_instance_reader.h
	g++ -c -g -std=c++11 -MMD -MP -MF tsp_instance_reader.o.d -o tsp_instance_reader.o tsp_instance_reader.cpp
	
clean:
	rm *.o *.o.d demo_tsp_instance_reader
