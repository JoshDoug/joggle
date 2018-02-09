# joggle
Toggle between the latest installed versions of Java 8 and 9 on macOS.
This is a 5 minute janky script made to deal with the annoyance of switching Java versions on macOS, which is regularly necessary with all the *current* Java 9 incompatibilties. Use at your own risk.

Add script to $PATH or add to a directory in $PATH.
Add `alias joggle=". $(which joggle.sh)"` to `.bashrc` or equivalent.
Switch Java versions by running the `joggle` command.
