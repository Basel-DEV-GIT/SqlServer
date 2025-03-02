FROM mcr.microsoft.com/mssql/server:2022-latest

ENV ACCEPT_EULA=Y

ENV SA_PASSWORD="NETWICHER@2025@DB!"

ENV MSSQL_PID=Express

RUN mkdir -p /var/opt/mssql

RUN echo "[network]" > /var/opt/mssql/mssql.conf && \
    echo "tcpport=1433" >> /var/opt/mssql/mssql.conf && \
    echo "ipaddress=0.0.0.0" >> /var/opt/mssql/mssql.conf

COPY setup.sql /docker-entrypoint-initdb.d/setup.sql

EXPOSE 1433

CMD ["/opt/mssql/bin/sqlservr"]


