IDIR =./
CC=gcc
CFLAGS=-I$(IDIR)

ODIR= ./
LDIR =.

LIBS=-lm

_DEPS = display.h 
DEPS = $(patsubst %,$(IDIR)/%,$(_DEPS))

_OBJ1 = display.o disp_num.o
OBJ1 = $(patsubst %,$(ODIR)/%,$(_OBJ1))

_OBJ = display.o disp_text.o
OBJ = $(patsubst %,$(ODIR)/%,$(_OBJ))


$(ODIR)/%.o: %.c $(DEPS)
	$(CC) -c -g  -o $@ $< $(CFLAGS)
all: disp_num disp_text
disp_num: $(OBJ1)
	$(CC) -o  $@ $^ $(CFLAGS) $(LIBS)
disp_text: $(OBJ)
	$(CC) -o  $@ $^ $(CFLAGS) $(LIBS)


.PHONY: clean

clean:
	rm -f $(ODIR)/*.o *~ core $(INCDIR)/*~ disp_text disp_num
