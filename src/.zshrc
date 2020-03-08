## By BinBash
#

sudo() {
    if [[ $@ == "pacman -S"* ]]; then
	command sh ~/.config/reflector/reflector.sh
	command sudo $@        
	else
command sudo $@
    fi
}

source /usr/share/fzf/completion-ia.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

case $TERM in
  xterm*)
    precmd () {print -Pn "\e]0;%~\a"}
    ;;
esac
