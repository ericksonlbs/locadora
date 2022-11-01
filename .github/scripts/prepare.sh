git clone https://github.com/SIN5005-EngSoft2021/jaguar

cd jaguar

mvn install:install-file -Dfile=br.usp.each.saeg.jaguar.core/lib/org.jacoco.core-0.7.6.jar \
     -DgroupId=br.usp.each.saeg -DartifactId=org.jacoco.core \
     -Dversion=0.7.6 -Dpackaging=jar

mvn install -pl br.usp.each.saeg.jaguar.core -am

cp ./br.usp.each.saeg.jaguar.core/target/br.usp.each.saeg.jaguar.core-1.0.0-jar-with-dependencies.jar ./br.usp.each.saeg.jaguar.maven.plugin/src/main/lib/jaguar.core-1.0.0-jar-with-dependencies.jar
     
mvn clean install -pl br.usp.each.saeg.jaguar.maven.plugin -am

mvn org.apache.maven.plugins:maven-install-plugin:3.0.0-M1:install-file \
     -Dfile=./br.usp.each.saeg.jaguar.maven.plugin/target/jaguar-maven-plugin-0.0.1-SNAPSHOT.jar

cd .. 
