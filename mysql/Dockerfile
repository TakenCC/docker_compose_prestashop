FROM mysql:5.7.42

# Copy the database dump and replace.sh script into the container
COPY dump/dump.sql /docker-entrypoint-initdb.d/
COPY .docker/mysql/replace.sh /replace.sh

# Set environment variables for MySQL
ENV MYSQL_DATABASE=mydb
ENV MYSQL_USER=user
ENV MYSQL_PASSWORD=abc123
ENV MYSQL_ROOT_PASSWORD=abc123

# Run the replace.sh script before starting the MySQL server
CMD bash -c "docker-entrypoint.sh mysqld"