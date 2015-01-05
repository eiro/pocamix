export SHELL = /bin/zsh

index.html: behave.js

%.js: %.ls
	lsc -c $<

%.html: %.htmlx
	p5x html5 < $< > $@

