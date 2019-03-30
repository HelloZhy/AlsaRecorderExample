INC=/usr/include/
LIBS_DIR=/usr/lib/
LIBS=asound

record: main.o recorder.o
	g++ -L${LIBS_DIR} -l${LIBS} -I./ -I${INC} main.o recorder.o -o record

main.o: main.cpp
	g++ -L${LIBS_DIR} -l${LIBS} -I./ -I${INC} -c main.cpp -o main.o

record.o: recorder.cpp
	g++ -L${LIBS_DIR} -l${LIBS} -I./ -I${INC} -c recorder.cpp -o recorder.o

clean:
	rm -rf *.o record
