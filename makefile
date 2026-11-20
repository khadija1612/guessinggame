.PHONY: all clean README.md

all: README.md

README.md:
	@echo "Generating README.md..."
	@echo "# Guessing Game" > README.md
	@echo "" >> README.md
	@echo "A Bash game where you guess how many files are in the current directory." >> README.md
	@echo "" >> README.md
	@echo "- **Date and time make was run:** $$(date '+%A, %B %d, %Y at %H:%M:%S %Z')" >> README.md
	@echo "- **Lines of code in guessinggame.sh:** $$(wc -l < guessinggame.sh)" >> README.md

clean:
	rm -f README.md
