.PHONY: all

EXECUTABLES=fib_rec fib_dp fib_dp2 fib_dp3

all: $(EXECUTABLES)

%.cmx: %.ml
	ocamlopt -c $<

fib_%: entry.cmx fib_%.cmx
	ocamlopt -o $@ $^

clean:
	-rm -f *.cmx *.cmi *.o
	-rm -f $(EXECUTABLES)
