function backup {
	case "${1^^}" in
		"WORK")
			CONFIG_FILE="$HOME/.config/rsync/work.conf"
			DEST="/run/media/carlos/Transposon/TempStoragei"
			PROFILE="work"
			;;
		"HOME")
			CONFIG_FILE="$HOME/.config/rsync/home.conf"
			DEST="/run/media/carlos/Elements/Work/College"
			PROFILE="home"
			;;
		"CLONE")
			CONFIG_FILE="$HOME/.config/rsync/home.conf"
			DEST="/run/media/carlos/Canvio/Work/College"
			PROFILE="home"
			;;
		*)
			printf "%s\n" "The profile doesn't exist. Available profiles are: \`home', \`work', and \`clone' (work)."
			return 1
			;;
	esac
	
	if [ -n $PROFILE ]; then
		# RSYNC options
		RSYNC_ARGS="--recursive --links --perms --executability --times --group --owner --human-readable --info=progress2"
		
		# Do backup.
		printf "Initialising \e[1m\`${PROFILE}'\e[0m backup...\n\r"
		
		/usr/bin/rsync $RSYNC_ARGS $(cat $CONFIG_FILE) $DEST --delete-after
		
		printf "\nBackup complete.\n"
		return 0
	fi
}

