
readme.md:

	echo '# Guessing Game Bash Program' > readme.md
	echo '## For "The Unix Workbench" course' >> readme.md
	echo '- readme.md last generated '$$(date) >> readme.md
	echo '- guessinggame.sh contains '$$(cat guessinggame.sh | wc -l)' lines' >> readme.md
	
