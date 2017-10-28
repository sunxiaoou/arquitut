#!/bin/sh

# mvn clean test	# arquillian-weld-ee-embedded is default

# mvn install:install-file \
#    -Dfile=$HOME/depot/src123100_build/Oracle_Home/wlserver/server/lib/wlthint3client.jar \
#    -DgroupId=com.oracle.weblogic \
#    -DartifactId=wlthint3client \
#    -Dversion=12.3.1 \
#    -Dpackaging=jar

# mvn -P arquillian-wls-remote dependency:copy-dependencies 
# mvn -P arquillian-wls-remote ant:ant 
# orig.sh maven-build.properties
# sed "s/offline=false/offline=true/" maven-build.properties.orig > maven-build.properties
# mvn -P arquillian-wls-managed dependency:tree -Dverbose

# mvn -P arquillian-weld-ee-embedded clean test
# mvn -P arquillian-glassfish-embedded clean test
# mvn -P arquillian-wls-remote clean test
mvn -P arquillian-wls-managed clean test
