ARG ELASTIC_VERSION

# https://www.docker.elastic.co/
FROM docker.elastic.co/logstash/logstash:${ELASTIC_VERSION} 
# Download JDBC connector for Logstash

# Add your logstash plugins setup here
# Example: RUN logstash-plugin install logstash-filter-json

#RUN logstash-plugin install logstash-input-jdbc

# Download JDBC connector for Logstash
RUN curl -L --output "mysql-connector-java-8.0.30.tar.gz" "https://dev.mysql.com/get/Downloads/Connector-J/mysql-connector-java-8.0.30.tar.gz" \
    && tar -xf "mysql-connector-java-8.0.30.tar.gz" "mysql-connector-java-8.0.30/mysql-connector-java-8.0.30.jar" \
    && mv "mysql-connector-java-8.0.30/mysql-connector-java-8.0.30.jar" "mysql-connector-java-8.0.30.jar" \
    && rm -r "mysql-connector-java-8.0.30" "mysql-connector-java-8.0.30.tar.gz"