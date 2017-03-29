export WAYPOINTS=$HOME/.waypoints

function wp {
	mkdir -p $WAYPOINTS
	if [[ "$#" -ne 1 ]]; then
        show_wp | column -t
	else
		cd -P "$WAYPOINTS/$1" 2>/dev/null
		if [[ $? -ne 0 ]]; then
			echo "No '"$1"' waypoint"
		fi
	fi
}

function mwp { 
	mkdir -p $WAYPOINTS
	ln -s "$(pwd -P)" "$WAYPOINTS/$1"
}

function dwp { 
	rm -i "$WAYPOINTS/$1"
}

function show_wp {
	for f in $(find $WAYPOINTS -maxdepth 1 -type l -exec basename {} \;); do
		echo $f "->" $(readlink "$WAYPOINTS/$f")
	done
}
