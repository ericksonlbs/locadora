git clone https://github.com/SIN5005-EngSoft2021/jaguar

cd jaguar

./mvnw install:install-file -Dfile=br.usp.each.saeg.jaguar.core/lib/org.jacoco.core-0.7.6.jar \
     -DgroupId=br.usp.each.saeg -DartifactId=org.jacoco.core \
     -Dversion=0.7.6 -Dpackaging=jar
     
./mvnw clean install -Dmaven.test.failure.ignore=true

cd .. 
