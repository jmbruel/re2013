#-----------------------------------------------------
MAIN=book
ICONSDIR=/Users/bruel/dev/asciidoc/images/icons
#-----------------------------------------------------

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
	git push origin master

init:
	@echo '==> Repository initial'
	git init

clean: 
	@echo '==> Suppression des fichiers de compilation'
	@# fichiers de compilation latex
	@rm -f *.log *.aux *.dvi *.toc *.lot *.lof *.ilg
	@# fichiers de bibtex
	@rm -f *.blg
