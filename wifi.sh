function wifi {
	case "${1^^}" in
		"OFF")
			printf "Disabling wireless interface...\n"
			/usr/bin/rfkill block 0
			;;
		"ON")
			printf "Enabling wireless interface...\n"
			/usr/bin/rfkill unblock 0
			;;
		*)
			printf "\nOption not recognised. Try using \`on' or \`off'.\n"
			;;
	esac
}

