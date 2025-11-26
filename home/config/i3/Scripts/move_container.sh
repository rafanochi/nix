#!/bin/bash

while read -r Used Focused; do
	[ "$Focused" = true ] && WSFocused=$Used
done < <(i3-msg -t get_workspaces | jq -r '.[] | [.num, .focused] | join(" ")')

next() {
	if [ "$WSFocused" = 9 ]; then
		i3-msg -q "move container to workspace 1"
	else
		i3-msg -q "move container to workspace $(( WSFocused + 1))"
	fi
}

prev() {
	if [ "$WSFocused" = 1 ]; then
		i3-msg -q "move container to workspace 9"
	else
		i3-msg -q "move container to workspace $(( WSFocused - 1))"
	fi
}

 case $1 in
 	prev) prev ;;
 	next|"") next ;;
 esac
