latexmk -C -outdir=build
latexmk -pdf main.tex
mv build/main.pdf .