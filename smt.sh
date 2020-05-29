function hyperthreading {
	case "${1^^}" in
		"OFF")
			pkexec tee /sys/devices/system/cpu/smt/control <<< off
			# Update Julia settings
			if [ -v $JULIA_NUM_THREADS ]; then
				JULIA_NUM_THREADS=$(nproc)
			else
				exit 0;
			fi
			;;
		"ON")
			pkexec tee /sys/devices/system/cpu/smt/control <<< on
			# Update Julia settings
			if [ -v $JULIA_NUM_THREADS ]; then
				JULIA_NUM_THREADS=$(nproc);
			else
				exit 0
			fi
			;;
		*)
			printf "\nTo enable or disable hyperthreading dinamically, use ON or OFF."
			;;
        esac
}

