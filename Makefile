whitepaper.pdf: whitepaper.tex
	latexmk -pdf -interaction=nonstopmode whitepaper.tex

whitepaper.tex: whitepaper.md default.latex
	pandoc whitepaper.md -t latex --template=default.latex -o whitepaper.tex

watch: whitepaper.tex
	latexmk -pdf -pvc -interaction=nonstopmode whitepaper.tex
