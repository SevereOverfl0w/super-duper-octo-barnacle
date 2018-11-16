#!/bin/sh

make pom.xml super-duper-octo-barnacle.jar

mvn deploy:deploy-file -Dfile=super-duper-octo-barnacle.jar -DrepositoryId=clojars -Durl=https://clojars.org/repo -DpomFile=pom.xml
