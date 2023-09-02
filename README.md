# Dissertation

[![PDF](https://shields.io/badge/PDF-master-informational)](https://raw.githubusercontent.com/manu-mannattil/thesis/build/thesis.pdf)
[![build](https://github.com/manu-mannattil/thesis/actions/workflows/build.yml/badge.svg)](https://github.com/manu-mannattil/thesis/actions/workflows/build.yml)

LaTeX source files for my PhD dissertation, *Asymptotics, Geometry, and
Soft Matter* (Syracuse University, 2023).

## Building

PDFs get automatically built using a [GitHub workflow](.github/workflows/build.yml)
each time a commit is pushed to this repository.  The dependency tree
below shows how the various files are included.

    thesis.tex
    ├── ifdefs.tex
    ├── preamble.tex
    └── main.tex
        ├── notation.tex
        ├── chap01.tex
        ├── chap02.tex
        ├── chap03.tex
        ├── chap04.tex
        ├── chap05.tex
        └── chapcv.tex

To generate a PDF version locally, clone the repository, and run `make`
or compile using latexmk.  Using make is advantageous for various
reasons (such as including Git commit information).  You will also need
a relatively recent version of TeXLive (for the font packages, mostly).

## License

Copyright © 2023 Manu Mannattil.  All rights reserved.
