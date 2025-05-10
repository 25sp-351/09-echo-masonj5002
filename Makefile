all: echo

CC = gcc
CFLAGS = -Wall

echo: echo.o
	$(CC) $(CFLAGS) echo.o -o echo

echo.o: echo.c
	$(CC) $(CFLAGS) -c echo.c

clean:
	rm -f *.o echo