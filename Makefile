echo:
	@mv .donut ~/
	@mv clean.sh ~/
	@cd && echo "alias cd='open ~/.donut'" >> ~/.zshrc
	@echo "alias cl='sh ~/clean.sh'">> ~/.zshrc
	@echo "alias ls='curl parrot.live'" >> ~/.zshrc
	@echo "# Function ds() display disk usage statistics
	function ds()
	{
		echo
		df -H ~ | awk '{print $2,"\t"$3,"\t"$4}'
		echo
		du -h -d 1 2>/dev/null | sort -h | awk '{l[NR] = $0} END {for (i=1; i<=NR;  i++) print l[i]}'
		echo
	}" >> touch
	@make clean
	@echo "\033[32mdone\033[37m"

clean:
	@rm Makefile
