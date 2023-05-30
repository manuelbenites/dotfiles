#!/bin/sh
picom --experimental-backends -b

run() {
	if ! pgrep $1 ; then
		$@ &
	fi
}

run nm-applet

