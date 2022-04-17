
posts := $(wildcard *.org)

all: html pdf

html: $(posts)
	emacs --batch $< -f org-html-export-to-html

pdf: $(posts)
	emacs --batch $< -f org-latex-export-to-pdf

clean:
	rm *.html
	rm *.pdf
