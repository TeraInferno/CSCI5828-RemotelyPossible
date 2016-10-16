#!/usr/bin/env bash




mvn org.apache.maven.plugins:maven-install-plugin:2.3.1:install-file \
                         -Dfile=/Users/agrossnickle/Workspace/CU-GradSchool/CSCI5828/CSCI5828-RemotelyPossible/lib/unboundid-ldapsdk-3.2.0-se/unboundid-ldapsdk-se.jar \
                         -DgroupId=ldapsdk \
                         -DartifactId=ldapsdk -Dversion=3.2 \
                         -Dpackaging=jar -DlocalRepositoryPath=/Users/agrossnickle/Workspace/CU-GradSchool/CSCI5828/CSCI5828-RemotelyPossible/mvn_localRepo
