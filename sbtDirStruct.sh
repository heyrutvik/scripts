#!/bin/bash
mkdir -p src/{main,test}/{java,resources,scala}
mkdir lib project target

# create an initial build.sbt file
echo "name := \"$1\"
version := \"$2\"
scalaVersion := \"$3\"" > build.sbt

# add eclipse plugin
echo 'addSbtPlugin("com.typesafe.sbteclipse" %% "sbteclipse-plugin" % "5.1.0")' > project/plugins.sbt
