function hyperthreading {
	case "${1^^}" in
		"OFF")
			pkexec tee /sys/devices/system/cpu/smt/control <<< off
			# Update Julia settings
			if [ -v $JULIA_NUM_THREADS ]; then
				exit 0;
			else
				JULIA_NUM_THREADS=$(nproc)
			fi
			;;
		"ON")
			pkexec tee /sys/devices/system/cpu/smt/control <<< on
			# Update Julia settings
			if [ -v $JULIA_NUM_THREADS ]; then
				exit 0;
			else
				JULIA_NUM_THREADS=$(nproc);
			fi
			;;
		*)
			printf "To enable or disable hyperthreading dinamically, use ON or OFF.\n"
			;;
        esac
}

