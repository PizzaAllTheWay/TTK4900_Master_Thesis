if [ ! -d build ]; then
    latexmk -C -outdir=build
fi

latexmk -pdf -outdir=build main.tex
cp build/main.pdf .