#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias ll='ls -lahF'
alias mkdir='mkdir -p'
alias sysu='systemctl --user'

colortable () {
	for i in {0..255} ; do
		printf "\x1b[38;5;${i}m%3d " "${i}"

		if (( $i == 15 )) || (( $i > 15 )) && (( ($i-15) % 12 == 0 )); then
			echo;
		fi
	done
}

PS1='[\u@\h \W]\$ '
