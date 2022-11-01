git clone https://github.com/SIN5005-EngSoft2021/jaguar

cd jaguar

./mvnw install:install-file -Dfile=br.usp.each.saeg.jaguar.core/lib/org.jacoco.core-0.7.6.jar \
     -DgroupId=br.usp.each.saeg -DartifactId=org.jacoco.core \
     -Dversion=0.7.6 -Dpackaging=jar
     
./mvnw clean install -pl br.usp.each.saeg.jaguar.maven.plugin -am

./mvnw org.apache.maven.plugins:maven-install-plugin:3.0.0-M1:install-file \
     -Dfile=./br.usp.each.saeg.jaguar.maven.plugin/target/jaguar-maven-plugin-0.0.1-SNAPSHOT.jar

cd .. 
