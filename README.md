Story Of Adventure - README & FAQ v.23 Sep 2020

+==================| Where is the manual? Character sheets? |=======================+

The most up to date copies of the manual, character sheets, and other materials
can be found in the "pdf" folder.


+=============| What's new? Has "X" been added? Does it have "Y"? |=================+

The most recent changelogs for everything regarding the game, from its mechanics 
to its materials, can be found right in the root directory labelled 
"logDDMMMYYYY.txt." Previous logs can be found in the "changelogs" folder.


+============| I'd like to help edit the documents. What do I need? |===============+

The materials are being put together using LaTeX (https://www.latex-project.org/). 
To get started you'll need a basic installation of LaTeX (i.e. not LyX), and the 
text editor or TeX IDE of your choice. Any working documents (even if they're
not explicitly LaTeX files) can be found in the "LaTeX" folder. Also for consistency 
across the documents make sure that before you start editing that you look at the
"doc_strings.tex," and "doc_formats.tex" files. As implied, these contain string 
references and formatting macros that are used document-wide.

+==| On LaTeX |==+

For LaTeX distributions we recommend (and are not in any way sponsored by) either
TeXLive (http://tug.org/texlive/) or MiKTex (https://miktex.org/).
- TeXLive will give you the most complete LaTeX package with all of the major 
macros, fonts, and compilers. It contains everything that you'll need to start 
making changes to the documents, but it does give you EVERYTHING. 

- MiKTex does not install everything out of the gate like TeXLive, but it does
have a robust package manager that allows you to easily alter your installation 
how you like. MiKTex also will come installed with the 
TeXworks IDE (http://www.tug.org/texworks/).

Both distributions are cross-compatible between operating systems.


+==| On Editors and Compilation |==+

Most text editors and IDEs should be sufficient for editing the documents, however
make sure that it creates minimal to no "noise" within the documents (i.e. 
proprietary formatting, comments, etc. ) to maintain compatability between editors.
For IDEs we recommend (and are again not affiliated with ) 
TeXMaker (https://www.xm1math.net/texmaker/). It's free, system-independent, opens 
the full scope of the document (i.e. the file and any files it includes), and 
quickly viewing changes is easy with both the compiler and pdf viewer of your choice
built right into the GUI.

While it's not required, to maintain file structure it's recommended that 
compilation is executed using the "makepdf" script or the makefile provided in the 
"LaTeX" folder. They will compile the documents, and then move everything to its 
proper spot. The makefile currently has 2 options:

- *nothing* : This will compile the pdf and move it to the pdf folder.

- clean : This will clear out the ancillary files leftover from compilation (e.g. aux, 
idx, toc, out, etc)

For Windows users, clicking the "makepdf" script will launch a small menu that
will detail the options. Each of those options can also be executed from the command
line with ".\makepdf.bat option_name"

If you choose not to do either of those options, just make sure that the document is
compiled using "pdflatex" and that the output pdf is moved to the "pdf" folder.

Apart from that standard "git-iquette" applies. Make sure to pull before pushing, be
careful that you're not pushing to master, etc.

+=======================| This all feels pretty extra. |============================+

This feels like it's not a question.
