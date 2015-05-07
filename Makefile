CC = arm-linux-gnueabihf-gcc
#CC = gcc

main: main.o SerialPort.o
	$(CC) main.o SerialPort.o -o main -lpthread  -static

main.o:main.c 
	$(CC) -c main.c -lpthread -static
	
SerialPort.o:SerialPort.c
	$(CC) -c SerialPort.c  -static
	
clean:
	rm -rf *.o main
