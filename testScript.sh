#/bin/bash

RUN_TYPE=$(echo "$1" | tr '[:upper:]' '[:lower:]')

echo "$RUN_TYPE"

if  [[ $RUN_TYPE == "destroy" ]]; then
	REAL_RUN="destroy --auto-approve"
else
	REAL_RUN=$RUN_TYPE
fi
