FILES :=  xinitrc Xmodmap Xresources Xresources.d xsessionrc
DOTFILES:= $(addprefix $(HOME)/, $(addprefix ., $(FILES)))

CPP := $(shell command -v cpp 2>/dev/null)

# derived files
COLORS := $(HOME)/.Xresources.d/colors
XDEFAULTS := $(HOME)/.Xdefaults

install: $(DOTFILES) $(COLORS) $(XDEFAULTS) 

$(HOME)/.%: %
	@ln -sfv $(realpath $<) $@

$(COLORS): 
	@ln -sfv .Xresources.dark $@

# Xresources predicates it has a sibling .Xresources.d, 
# we can build it once installed
$(XDEFAULTS): $(DOTFILES) $(COLORS)
ifdef CPP
	@cpp $(HOME)/.Xresources > $@
endif

.PHONY: clean
clean:
	@rm $(DOTFILES) $(XDEFAULTS) $(COLORS)
