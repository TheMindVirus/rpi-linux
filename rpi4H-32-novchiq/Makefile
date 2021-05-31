CONFIG=bcm2711_novchiq_defconfig
ARCH=arm
KERNEL=kernel7l
IMAGE=zImage
MAKE=make -j 10 -C ../../ ARCH=$(ARCH) CROSS_COMPILE=arm-linux-gnueabihf-

all:
	rm -f ../../.config && \
	$(MAKE) $(CONFIG) && \
	$(MAKE) $(IMAGE) modules dtbs && \
	$(MAKE) INSTALL_MOD_PATH=$(shell pwd) modules_install && \
	mkdir -p ./src && \
	cp -rf ../../arch ./src/ && \
	cp -rf ../../include ./src/ && \
	cp -f ../../Makefile ./src/ && \
	cp -rf ../../scripts ./src/ && \
	cp -rf ../../tools ./src/ && \
	mkdir -p ./boot && \
	mkdir -p ./boot/overlays && \
	cp -f ../../arch/$(ARCH)/boot/dts/*.dtb ./boot/ && \
	cp -f ../../arch/$(ARCH)/boot/dts/overlays/*.dtb* ./boot/overlays/ && \
	cp -f ../../arch/$(ARCH)/boot/dts/overlays/README ./boot/overlays/ && \
	cp -f ../../arch/$(ARCH)/boot/$(IMAGE) ./boot/$(KERNEL).img && \
	echo "Done!"
