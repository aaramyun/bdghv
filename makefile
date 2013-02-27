batchdghv_proce.pdf : batchdghv_proce.tex batchdghv.bib
	rm -rf *.aux
	pdflatex batchdghv_proce.tex
	bibtex batchdghv_proce
	pdflatex batchdghv_proce.tex
	pdflatex batchdghv_proce.tex

batchdghv_proce.tar.gz : batchdghv_proce.tex batchdghv.bib
	tar -zcvf batchdghv_proce.tar.gz batchdghv_proce.tex batchdghv.bib batchdghv_proce.pdf
