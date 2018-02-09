# joggle
Toggle between the latest installed versions of Java 8 and 9 on macOS.
This is a 5 minute janky script made to deal with the annoyance of switching Java versions on macOS, which is regularly necessary with all the *current* Java 9 incompatibilties. Use at your own risk.

* Add script to `$PATH` or add to a directory in `$PATH`.
* Add `alias joggle=". $(which joggle.sh)"` to `.bashrc` or equivalent.
* Switch Java versions by running the `joggle` command.

As changing the environment requires the script to be run in the current shell (using the `. /path/to/script.sh` method), exiting from the script in the event of an error will also exit the current shell, which is no good. So if the script can't find Java or the `$JAVA_HOME` environment variable isn't set, then it will just set it anyway. It might be possible to exit the script without exiting the shell, but this is supposed to save me time.
