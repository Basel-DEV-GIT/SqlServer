FROM mcr.microsoft.com/mssql/server:2022-latest

ENV ACCEPT_EULA=Y
ENV SA_PASSWORD="YourStrong!Passw0rd"
ENV MSSQL_PID=Express

RUN mkdir -p /var/opt/mssql

EXPOSE 1433

RUN echo "[network]" > /var/opt/mssql/mssql.conf && \
    echo "tcpport=1433" >> /var/opt/mssql/mssql.conf && \
    echo "ipaddress=0.0.0.0" >> /var/opt/mssql/mssql.conf

CMD ["/opt/mssql/bin/sqlservr"]

