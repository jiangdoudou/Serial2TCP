CC = arm-linux-gnueabihf-gcc

main: main.o SerialPort.o
	$(CC) main.o SerialPort.o -o main -lpthread  -static

main.o:main.c 
	gcc -c main.c -lpthread  -static
	
SerialPort.o:SerialPort.c
	gcc -c SerialPort.c  -static
	
clean:
	rm -rf *.o main
