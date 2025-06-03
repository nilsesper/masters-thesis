%%% Readme %%%%%%%%%%%%%%%%%%%%%%%%%%

This is a generalized template for creating LaTeX documents.
In this readme file, some general information on this template are stated.

Folders and files:
main.tex                    -   main document file
config.csv                  -   holds document configuration
resources/
    acronyms.sty            -   holds all defined acronyms of document
    bibliography.bib        -   holds all defined literature of document
    packages.sty            -   holds all additional package include commands
    images/                     -   holds all images of document
        image-files
content/
    title.tex                   -   holds title page
    abstract.tex                -   holds content of abstract
    chapters/
        i.tex                   -   holds content of chapter i in (0,...,highestchapter)
    appendix/                   -   holds content of appendix i in (0,...,highestappendix)
        i.tex
    acknowledgements.tex        -   holds acknowledgements

%%% main.tex
Main file that is compiled by TeX.
The file should not be changed, except for the first lines marked with "TO BE CHANGED BY THE USER".
-> Set the documentclass options, as well as the geometry options.

%%% config.csv
Here one defined almost all properties of the generated document (apart from the actual content).
Data structure is a tabular file with "variable,value" fields, one per line.
-> Edit these parameters in order to configure your document.

usebib                      -   use bibtex (bib list: bibliography.bib), generate bibliography list
useacr                      -   use acronyms package (acro list: acronyms.sty), generate acronyms list

titlepage                   -   generate title page if > -1
abstract                    -   generate abstract if > -1
acknowledgements            -   generate acknowledgements if > -1
listoffigures               -   generate list of figures if > -1
listoftables                -   generate list of tables if > -1

tocdepth                    -   depth of table of contents (0: chapters, 1: sections, ...), -1 means no table of contents generated
abstractintoc               -   list abstract in toc if > -1
acknowledgementsintoc       -   list acknowledgements in toc if > -1
usecleardouble              -   use cleardoublepage instead of clearpage between all chapters and chapter-like sections (only relevant for twoside document)

chaptertopspace             -   space between chapter heading start and top of page (in pt)
chapterbottomspace          -   space between chapter heading end and text/content begin (in pt)

highestchapter              -   maximum chapter number (max{i} where i.tex are the chapter content files), -1 means no chapters
For each chapter i in (0,...,highestchapter):
    chapteri                -   title of chapter i (e.g. "Chapter i", without '"')

highestappendix             -   maximum appendix number (as highestchapter), -1 means no appendix
For each appendix i in (0,...,highestappendix):
    appendixi               -   title of appendix i (as chapteri)

