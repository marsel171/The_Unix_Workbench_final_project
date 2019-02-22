README.md: guessinggame.sh
	touch README.md
	echo "$(shell ##)This is the final project!" > README.md
	echo "The date is $(shell date)" >> README.md	
	echo "There are $(shell wc -l guessinggame.sh | egrep -o "[0-9]+") lines in the suessinggame.sh file" >> README.md

