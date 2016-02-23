summary:
	perl pandocify Home.md | pandoc -M title='Zusammenfasung Drahtlose Kommunikation' -M author="$$(git log --format='%aN' | sort -u | perl -pe 'print ", " if $$p; chomp; $$p = 1')" -M date="$$(date +'%Y-%m-%d')" -f markdown -t latex -o summary.pdf

.PHONY: summary
