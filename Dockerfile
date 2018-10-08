FROM python:2-stretch
MAINTAINER Jacopo Mauro

RUN mkdir /tool && \
  cd /tool && \
	git clone --depth 1 https://github.com/Z3Prover/z3.git && \
	cd z3 && \
	mkdir install && \
	python scripts/mk_make.py --python --prefix=/tool/z3/install --pypkgdir=/tool/z3/install/lib/python-2/site-packages && \
	cd build && \
	make && \
	make install


ENV PYTHONPATH=$PYTHONPATH:/tool/z3/install/lib/python-2/site-packages
ENV PATH=$PATH:/tool/z3/install/bin


