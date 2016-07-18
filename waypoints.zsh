export WAYPOINTS=$HOME/.waypoints

function wp {
	if [[ "$#" -ne 1 ]]; then
		mkdir -p $WAYPOINTS
		for f in $(find $WAYPOINTS -type l -maxdepth 1 -exec basename {} \;); do
			echo $f "->" $(readlink "$WAYPOINTS/$f")
		done
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
