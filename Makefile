all:
	./dep.sh
	make -i -C ./rpi01-32
	make -i -C ./rpi23-32
	make -i -C ./rpi4H-32
	make -i -C ./rpi4H-32-novchiq
	make -i -C ./rpi3+-64
	make -i -C ./rpi4H-64
