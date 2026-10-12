ifdef CONFIG_DIR
include $(CONFIG_DIR)/common.mk
else
include ../config/common.mk
BIN_DIR = ../bin
endif
.PHONY: clean all

EXE = simple_types.x matrix_type.x matrix_type_param.x

all:  $(EXE)
	mkdir -p $(BIN_DIR)
	echo 'Installing...'$(EXE)
	cp $(EXE) $(BIN_DIR)

clean:
	rm -f *.[ox] *.mod

simple_types.x: simple_types.o 
	$(FC) $(FFLAGS) $^ -o $@ $(LDFLAGS)

matrix_type.x: matrix_type.o 
	$(FC) $(FFLAGS) $^ -o $@ $(LDFLAGS)

matrix_type_param.x: matrix_type_param.o 
	$(FC) $(FFLAGS) $^ -o $@ $(LDFLAGS)

