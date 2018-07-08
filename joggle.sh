#!/usr/bin/env bash
# Toggle between latest installed versions of Java 8 and 9 on macOS
# Simple script, no parsing of Strings for version numbers etc

java_path=$(type -p java)
if [[ "$java_path" ]] && [[ -x $JAVA_HOME ]]; then
  echo "Java found on system and JAVA_HOME is set"
else
  echo "Java not found on PATH or JAVA_HOME not set"
  echo "Defaulting to Java 9 when attempting to set JAVA_HOME"
fi

java8=`/usr/libexec/java_home -v '1/8*'`
java9=`/usr/libexec/java_home -v '10*'`

if [ "$java9" == "$JAVA_HOME" ]; then
  export JAVA_HOME=$java8
  java -version
else
  export JAVA_HOME=$java9
  java -version
fi
