#!/bin/bash
# NOTE: these functions only return the wanted things 
#	*when used as root*

function rootpart_label {
	# return root partition label
	lsblk -r -oMOUNTPOINT,LABEL,KNAME | grep '^/ ' | cut -f2 -d' '
}

function partlabel_uuid {
	# give partition label as $1
	# the corresponding uuid is returned
	lsblk -r -o label,PARTUUID | grep "$1" | cut -f2 -d' '
}
