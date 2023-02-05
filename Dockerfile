FROM maven:3-eclipse-temurin-8

RUN curl -fsSL https://deb.nodesource.com/setup_18.x -o /tmp/nodesource_setup.sh && bash /tmp/nodesource_setup.sh && apt-get install -y nodejs && curl -sL https://aka.ms/InstallAzureCLIDeb | bash && npm i -g azure-functions-core-tools@4 --unsafe-perm true

RUN git clone https://github.com/HtetLinMaung/sequelize-java.git && cd sequelize-java && mvn clean package && mvn install
