FROM python:2-stretch
MAINTAINER Jacopo Mauro

RUN mkdir /solvers_exec && \
  cd /solvers_exec && \
	git clone --depth 1 https://github.com/Z3Prover/z3.git && \
	cd z3 && \
	python scripts/mk_make.py --python && \
	cd build && \
	make && \
	make install
