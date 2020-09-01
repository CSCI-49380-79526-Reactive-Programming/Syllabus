PDF=syllabus.pdf
open:
	gio open `git remote get-url origin`'#readme'
html:
	pandoc README.md -o README.html
preview-html: html
	gio open README.html
pdf:
	pandoc -f gfm README.md -o $(PDF)
preview-pdf: pdf
	gio open $(PDF)
toc:
	gh-md-toc README.md | xclip -selection clipboard
