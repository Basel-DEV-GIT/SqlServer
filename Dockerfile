FROM mcr.microsoft.com/mssql/server:2019-latest

ENV ACCEPT_EULA=Y
ENV SA_PASSWORD=SafeDocs_SqlServer_Docker_repo2024@
ENV MSSQL_PID=Express

EXPOSE 1433

CMD /opt/mssql/bin/sqlservr






FROM mcr.microsoft.com/mssql/server:2022-latest

ENV ACCEPT_EULA=Y
ENV SA_PASSWORD=SafeDocs_SqlServer_Docker_repo2024@

EXPOSE 1433

CMD /opt/mssql/bin/sqlservr
