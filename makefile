all: README.md

README.md: guessinggame.sh
	echo '# Guessing game' > README.md
	echo 'Simple bash game where user tries to guess correct number of files in working directory' >> README.md
	echo '## Date:' >> README.md
	echo 'README was created using makefile on - **$(shell LC_ALL=en_US.utf8 date -u)**' >> README.md
	echo '## Code line count:' >> README.md
	echo 'guessinggame.sh holds **$(shell wc -l guessinggame.sh | egrep -o '^[0-9]+')** lines of code' >> README.md

clean:
	rm -f README.md

