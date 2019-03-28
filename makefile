TEX=platex
DVI2PDF=dvipdfmx

SOURCES=main.tex

all: .tex.dvi dvi2pdf clean

.tex.dvi: main.tex
	@\${TEX} \$<

dvi2pdf: main.dvi
	@\${DVI2PDF} -p a4 \$^

clean:
	@rm -f *.dvi *.aux *.log%