#!/bin/bash

status=`nordvpn status`

if [[ $status == *"Whoops"* ]]; then
	echo "NordVPN: daemon off"
else
	status=(${status[@]})
	echo "NordVPN: ${status[1]}"
fi

