obj-m += 1-hello.o
obj-m += 2-hello.o
obj-m += 3-hello.o
obj-m += 4-hello.o
obj-m += startstop.o
startstop-y := 5-start.o 5-stop.o

all:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) modules

clean:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) clean
