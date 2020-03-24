ASMBIN=/mnt/c/Users/shaun/rgbds
EMUBIN=/mnt/c/Users/shaun/bgb

all:
	echo "Building GB ROM"
	$(ASMBIN)/rgbasm.exe -omain.o main.s
	$(ASMBIN)/rgblink.exe -p00 -omain.gb main.o
	$(ASMBIN)/rgbfix.exe -v -m00 -p00 -tMain main.gb

run: all
	$(EMUBIN)/bgb.exe ./main.gb

clean:
	rm -f main.o main.gb

