while getopts "p:s:R" opt; do
	case "$opt" in
		p)
			RAW_PLATFORM="${OPTARG}"
			PIP_PLATFORM="--platform ${OPTARG}"
			;;
		s) PACKAGE_SUFFIX="${OPTARG}" ;; 
		R) PRERELEASE_ALLOW=1 ;; 
		*) print_usage; exit 1 ;;
	esac
done
