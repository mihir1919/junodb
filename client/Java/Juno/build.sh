#!/bin/bash

# Step 1: mvn clean package -DskipTests
mvn clean package -DskipTests

# Step 2: cd to juno-client-api
cd juno-client-api

# Step 3: mvn install:install-file -Dfile=target/juno-client-api-1.0.0.jar -DgroupId=com.paypal.juno -DartifactId=juno-api -Dversion=1.0 -Dpackaging=jar
mvn install:install-file -Dfile=target/juno-client-api-1.0.0.jar -DgroupId=com.paypal.juno -DartifactId=juno-api -Dversion=1.0 -Dpackaging=jar

# Step 4: go back
cd ..

# Step 5: cd to juno-client-impl
cd juno-client-impl

# Step 6: mvn install:install-file -Dfile=target/juno-client-impl-1.0.0.jar -DgroupId=com.paypal.juno -DartifactId=juno-impl -Dversion=2.0 -Dpackaging=jar
mvn install:install-file -Dfile=target/juno-client-impl-1.0.0.jar -DgroupId=com.paypal.juno -DartifactId=juno-impl -Dversion=2.0 -Dpackaging=jar

# Step 7: go back to the original directory
cd ..

