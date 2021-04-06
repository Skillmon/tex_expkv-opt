-------------------------------------------------------------------------------
# expkv-opt -- parse class and package options with expkv

Version 2021-04-04 v0.2

Released under the LaTeX Project Public License v1.3c or later
See http://www.latex-project.org/lppl.txt

Hosted at https://github.com/Skillmon/tex_expkv-opt

-------------------------------------------------------------------------------

Copyright (C) 2020-2021 Jonathan P. Spratte

This  work may be  distributed and/or  modified under  the conditions  of the
LaTeX Project Public License (LPPL),  either version 1.3c  of this license or
(at your option) any later version.  The latest version of this license is in
the file:

  http://www.latex-project.org/lppl.txt

This work is "maintained" (as per LPPL maintenance status) by
  Jonathan P. Spratte.

-------------------------------------------------------------------------------

This package allows to parse key=val options for LaTeX classes and packages
using [`expkv`](https://github.com/Skillmon/tex_expkv). It handles global and
local options completely separately. The only required package is `expkv`.

# Building expkv-opt

The only place where version numbers and dates are guaranteed to be correct in
the repository is in the `l3build` configuration file `build.lua`. If it is
important to you that the files created have the correct version and date, you
should run `l3build tag` before any other build-related task.

`expkv-opt` utilizes the `l3build` system. You can run `l3build unpack` to
extract the package code `expkv-opt.sty` and `expkv-opt-2021-10-10.sty` into the
directory `build/unpacked/`.  If you want to build the documentation run
`l3build doc`, the resulting PDF will be in the main directory. Running `l3build
install` will put `expkv-opt.sty` and `expkv-opt-2021-10-10.sty` in your
`TEXMFHOME`, `l3build uninstall` will remove them. `l3build` should be contained
in any recent LaTeX installation.

You can run the checks from the folder `testfiles/` by running `l3build check`
to test whether the version you got has any regressions.

Of course you can also build everything manually. `pdftex expkv-opt.dtx` will
generate the package file and `pdftex expkv-opt-2020-10-10.dtx` the legacy
package, `pdflatex expkv-opt.dtx` will create the documentation, but you'll have
to run that at least twice, and if you want an index you'll also have to run
`makeindex -s gind.ist -o expkv-opt.ind expkv-opt.idx` and then rerun
`pdflatex`. Building the files manually will create quite a few auxiliary files
in the main directory.
