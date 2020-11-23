function nvidia {
	case "${1^^}" in
		"OFF")
			pkexec tee /proc/acpi/bbswitch <<< OFF
			;;
		"ON")
			pkexec tee /proc/acpi/bbswitch <<< ON
			;;
		*)
			printf "To enable or disable your discrete GPU, use ON or OFF.\n"
			;;
	esac
}

