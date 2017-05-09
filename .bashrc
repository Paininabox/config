#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

# set an ad-hoc GUI timer
timer() {
   shift

  (zenity --info --title="Time's Up" --text="${*:-BING}") &
  echo "timer set for $N"
}

t() {

	nohup sleep $1 && zenity --info --title="Time's Up" --text="$2" &
	exit
}

timer3() {
	sleep $1
	zenity --info --title="Time's Up" --text="$2"

}
alias config='/usr/bin/git --git-dir=/home/dustin/.cfg/ --work-tree=/home/dustin'
