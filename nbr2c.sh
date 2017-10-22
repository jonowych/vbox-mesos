#!/usr/bin/bash
# printf "%d\n" \'a
# printf "%d\n" \'o

# remove BOM to avoid error in script
# vi - :set nobomb
# use notepad++ to convert file without BOM (Encoding xxx without BOM)
# in windows notepad, just use ANSI to avoid BOM

n=$1

for ((i=1;i<${#n};i++)); do
k=$(printf "%d\n" \'${n:$i:1})
	if [ $k -eq 45 ] ; then let k=$k
	elif [[ ${n:0:1} = "n" || ${n:0:1} = "N" ]] ; then 
		if [ $k -eq 48 ]; then let k=111
		elif [[ $k -ge 49 && $k -le 57 ]]; then let k=$k+48
			if [ ${n:0:1} = "N" ] ; then let k=$k+15; fi
		else echo $(tput setaf 1)
			echo "!! Error -- character #$i is not an integer..."
			echo -n $(tput sgr0) && exit
		fi
	elif [ ${n:0:1} = "/" ] ; then 
		if [ $k -eq 111 ]; then let k=48
		elif [[ $k -ge 112 && $k -le 120 ]] ; then let k=$k-63
		elif [[ $k -ge 97 && $k -le 105 ]] ; then let k=$k-48
		else echo $(tput setaf 1)
			echo "!! Error -- character #$i is an invalid letter..."
			echo -n $(tput sgr0) && exit
		fi
	else echo $(tput setaf 1)
		echo "!! Error -- please enter command $0 with 'n', 'N' or '/' before argument"
		echo -n $(tput sgr0) && exit
	fi

if [ $i -eq 1 ]; then echo -n $(tput setaf 3)"conversion output = "$(tput sgr0) ; fi
printf "\x$(printf %x $k)"
done
echo
