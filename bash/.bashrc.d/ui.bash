# Colors: https://gist.github.com/fnky/458719343aabd01cfb17a3a4f7296797
# "printing" sequence: Refer: https://www.gnu.org/software/bash/manual/bash.html#Controlling-the-Prompt

# Prompt overwriting troubleshoot: https://stackoverflow.com/questions/19092488/custom-bash-prompt-is-overwriting-itself
# Summary: wrap non-printing characters inside "/[" and "]/" (or "\x01" and "\x02")

# Kudos to @sacii: https://stackoverflow.com/questions/192292/how-best-to-include-other-scripts
# Caveat: Not always works, but in case of .bashrc thing, it works
HERE="${BASH_SOURCE%/*}"
if [[ ! -d "$HERE" ]]; then HERE="$PWD"; fi

. "${HERE}/vendor/git-prompt.sh"

withRGBColor() {
	res="\x01\x1B[38;2;" 
	res+=$2;
	res+="m\x02";
	
	# Add background
	if [ $# -eq 3 ] 
	then 
		res+="\[\x1B[48;2;" 
		res+=$3 
		res+="m\]";
	fi

	res+=$1
	res+="\x01\x1B[0m\x02" # Reset styling
	echo -e $res
}

genPS1() {
	CATP_PEACH="250;179;135";
	CATP_YELLOW="249;226;175"
	CATP_GREEN="166;227;161";
	CATP_MAUVE="203;166;247";
	CATP_CRUST="17;17;27"
	CATP_SAPPHIRE="116;199;236";
	CATP_BLUE="137;180;250";
	CATP_LAVENDER="180;190;254";

	prompt=""
	prompt+="$(withRGBColor "\u@\W" $CATP_MAUVE)";
	prompt+="$(withRGBColor '$(__git_ps1 " (%s)")' $CATP_YELLOW)";

	echo -e "$prompt \$ "
}

PS1="\n$(genPS1)"
