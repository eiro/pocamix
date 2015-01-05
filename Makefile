export SHELL = /bin/zsh


index.html: behave.js

%.js: %.ls
	livescript -c $<

%.html: %.htmlx
	p5x html5 < $< > $@

