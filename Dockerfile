FROM mcr.microsoft.com/mssql/server:2022-latest

ENV ACCEPT_EULA=Y
ENV SA_PASSWORD=SafeDocs_SqlServer_Docker_repo

EXPOSE 1433

CMD /opt/mssql/bin/sqlservr
