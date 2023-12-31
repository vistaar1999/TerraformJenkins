#/bin/bash

RUN_TYPE=$(echo "$1" | tr '[:upper:]' '[:lower:]')

echo "$RUN_TYPE"

if  [[ $RUN_TYPE == "destroy" ]]; then
	"terraform destroy --auto-approve"
fi
