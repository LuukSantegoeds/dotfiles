#!/bin/bash

status=`nordvpn status | grep Status`

if [[ $status == "" ]]; then
	echo "NordVPN: daemon off"
else
	status=(${status[@]})
	echo "NordVPN: ${status[1]}"
fi

