INC=/usr/include/
LIBS_DIR=/usr/lib/
LIBS=asound

record: main.o recorder.o
	g++ -g main.o recorder.o -o record -L${LIBS_DIR} -l${LIBS} -I./ -I${INC}

main.o: main.cpp
	g++ -g -c main.cpp -o main.o -L${LIBS_DIR} -l${LIBS} -I./ -I${INC}

record.o: recorder.cpp
	g++ -g -c recorder.cpp -o recorder.o -L${LIBS_DIR} -l${LIBS} -I./ -I${INC}

clean:
	rm -rf *.o record
