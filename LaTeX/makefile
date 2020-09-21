../pdf/Story-of-Adventure-TTRPG.pdf: Story-of-Adventure-TTRPG.tex main_preamble.tex doc_formats.tex doc_strings.tex WhatIsSoA.tex BasicMechanics.tex CharacterCreation.tex
	pdflatex Story-of-Adventure-TTRPG.tex --output-format=pdf
	mv ./Story-of-Adventure-TTRPG.pdf ../pdf/Story-of-Adventure-TTRPG.pdf

clean: 
	rm *.aux *.out *.log *.toc *.idx *.ilg *.ind
