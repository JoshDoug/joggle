#!/usr/bin/env bash
# Toggle between latest installed versions of Java 8 and 9 on macOS
# Super simple script, no parsing of Strings for version numbers etc

if type -p java && [[ -x $JAVA_HOME ]]; then
  echo "Java found on system and JAVA_HOME is set"
else
  echo "Java not found on PATH or JAVA_HOME not set, will try setting JAVA_HOME anyway..."
fi

java8=`/usr/libexec/java_home -v '1/8*'`
java9=`/usr/libexec/java_home -v '9*'`

if [ "$java9" == "$JAVA_HOME" ]; then
  export JAVA_HOME=$java8
else
  export JAVA_HOME=$java9
fi
