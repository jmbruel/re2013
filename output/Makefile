#-----------------------------------------------------
MAIN=book
ICONSDIR=/Users/bruel/dev/asciidoc/images/icons
#-----------------------------------------------------

all: *.asc
	@echo '==> Compiling asciidoc files to generate HTML'
	asciidoc -a toc2 -b html5 -a icons -a iconsdir=$(ICONSDIR) -a data-uri \
	-a stylesheet=/Users/bruel/Dropbox/Public/dev/SysMLBook/stylesheets/scribe.css \
	-a numbered $(MAIN).asc

slides:
	@echo '==> Compiling asciidoc files to generate SLIDES'
	asciidoc -b deckjs -a icons -a iconsdir=$(ICONSDIR) -a data-uri -a numbered \
	-a deckjs_transition=horizontal-slide -a deckjs_theme=web-2.0 \
	--conf-file /Users/bruel/.asciidoc/backends/deckjs/deckjs.conf \
	-o slides.html $(MAIN).asc

co: 
	@echo '==> Checkout de la dernière version'
	git checkout master

commit: 
	@echo '==> Commit de la dernière version'
	git add .
	git commit -m "maj by JMB"

github:
	@echo '==> Create github repo'
	git remote add origin https://github.com/jmbruel/re2013.git

push:
	@echo '==> Pushing to gitub'
	git push -u origin master

init:
	@echo '==> Repository initial'
	git init

clean: 
	@echo '==> Suppression des fichiers de compilation'
	@# fichiers de compilation latex
	@rm -f *.log *.aux *.dvi *.toc *.lot *.lof *.ilg
	@# fichiers de bibtex
	@rm -f *.blg
