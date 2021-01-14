FILES := dircolors 
DOTFILES:= $(addprefix $(HOME)/, $(addprefix ., $(FILES)))

install: $(DOTFILES)

$(HOME)/.%: %
	@ln -sfv $(realpath $<) $@

.PHONY: clean
clean:
	@rm $(DOTFILES)
