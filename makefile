all: cr1 cr1_tests

cr1: cr1.ml
	ocamlbuild -use-ocamlfind cr1.byte

cr1_tests: cr1_tests.ml
	ocamlbuild -use-ocamlfind cr1_tests.byte

clean:
	rm -rf _build *.byte