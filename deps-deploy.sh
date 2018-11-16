#!/bin/sh

make pom.xml super-duper-octo-barnacle.jar

clojure -A:deploy
