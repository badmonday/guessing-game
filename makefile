all: README.md

README.md: guessinggame.sh
	echo '# Guessing game' > README.md
	echo '## Date: $(shell LC_ALL=en_US.utf8 date)' >> README.md
	echo '## Code line count: $(shell wc -l guessinggame.sh | egrep -o '^[0-9]+')' >> README.md

clean:
	rm -f README.md

