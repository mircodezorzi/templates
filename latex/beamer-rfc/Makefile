all: main

main: main.tex
	ls "main.tex" \
		| entr -s "pdflatex -interaction nonstopmode -shell-escape -file-line-error main.tex"

clean:
	rm -rf main.aux main.nav main.snm main.log main.toc main.out _minted-main
