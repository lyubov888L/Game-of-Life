
CC=g++
CFLAGS=-c -Wall
LDFLAGS=

SOURCES=main.cpp
OBJECTS=$(SOURCES:.cpp=.o)

EXECUTABLE=gameOfLife

all: $(SOURCES) $(EXECUTABLE)
    
$(EXECUTABLE): $(OBJECTS) 
	$(CC) $(LDFLAGS) $(OBJECTS) -o $@

.cpp.o:
	$(CC) $(CFLAGS) $< -o $@

clean:
	rm *.o *.out $(EXECUTABLE)
