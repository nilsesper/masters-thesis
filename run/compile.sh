### DOCUMENTATION LATEX COMPILATION FILE

# go to store path of this bash file (since relative directories are used): REPO_DIR/scripts
cd $( dirname -- "$BASH_SOURCE"; )
# go to REPO_DIR/
cd run
echo "Compiling the document run/main.tex..."

# clear old output files
find . -name "main.*" -type f ! -name '*.tex' -delete
rm *.log

# recompile (multiple times for bibliography)
pdflatex main.tex && biber main && pdflatex main.tex && pdflatex main.tex

# copy pdf output into REPO_DIR/out/ directory
cp main.pdf ../out/thesis.pdf
