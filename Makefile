whitepaper.pdf: whitepaper.tex
	latexmk -pdf whitepaper.tex

whitepaper.tex: whitepaper.md default.latex
	pandoc whitepaper.md -t latex --template=default.latex -o whitepaper.tex

watch: whitepaper.tex
	latexmk -pdf -pvc -interaction=nonstopmode whitepaper.tex

clean:
	latexmk -c
	rm whitepaper.tex
