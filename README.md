# iterm-nvim-setup

install & update iterm2 https://iterm2.com/downloads.html





install oh my zsh https://ohmyz.sh/







install nerd fonts - they go into ~/Library/Fonts Fonts I like:

VictorMono
ShureTechMono

to find icont, go to nerdfont - cheat sheet ... and search for icon.  You can copy paste into terminal...








update colors using flink.intermcolors







install neovim

move it to /usr/local - mv ./nvim-osx64 /usr/local/nvim-osx64

create a symlink in /usr/local/bin to the nvim executable - ln -s /usr/local/nvim-osx64/bin/nvim /usr/local/bin/nvim

ln = create link -s = symbolic link instead of hard link... symbolic links






set up neovim


create file init.lua at ~/.config/nvim

create a folder called flink in there as well


install vim-plug https://github.com/junegunn/vim-plug/

autoload dir -> /usr/local/nvim-osx64/share/nvim/runtime/autoload


complet .zshrc

autoload -Uz vcs_info

alias src="source ~/.zshrc"
alias h="cd ~"
alias nv="nvim"

precmd() {
vcs_info
}

setopt PROMPT_SUBST
NEWLINE=$'\n'
export PROMPT='%{$fg[blue]%} ${vcs_info_msg_0_}  %F{241}﬌ %d ﬋${NEWLINE}%{$fg[green]%} %{$reset_color%}'



