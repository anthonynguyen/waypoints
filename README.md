# waypoints

`waypoints` is a zsh script to save and navigate bookmarks to directories on your computer.

### Installing
Clone this repo with
```
git clone https://github.com/anthonynguyen/waypoints.git
```
Add the following lines to your `.zshrc`
```
source /path/to/waypoints/repo/waypoints.zsh
fpath=(/path/to/waypoints/repo $fpath)
```
By default, the `~/.waypoints` folder is used to store waypoints, but this can be changed using the `$WAYPOINTS` environment variable.

### Commands
* `wp` goes to a named waypoint. If run without arguments, it will list all waypoints.
* `mwp` makes a waypoint with the specified name to the current directory. If run without arguments, it will use the name of the current directory.
* `dwp` deletes the waypoint with the specified name.

### License
`waypoints` is licensed under the MIT License. See the `LICENSE` file for details
