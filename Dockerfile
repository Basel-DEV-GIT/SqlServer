# استخدام صورة SQL Server 2019
FROM mcr.microsoft.com/mssql/server:2019-latest

# قبول شروط الترخيص وإعداد كلمة المرور
ENV ACCEPT_EULA=Y
ENV SA_PASSWORD=NETWICHER@2025@DB!
ENV MSSQL_PID=Express
ENV MSSQL_TCP_PORT=1433

# تشغيل الحاوية كمستخدم root لمنع مشاكل الأذونات
USER root

# فتح المنفذ 1433 في الحاوية
EXPOSE 1433

# إضافة Healthcheck لضمان أن SQL Server يعمل قبل السماح بالاتصال
HEALTHCHECK --interval=10s --timeout=3s \
   CMD /opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P "${SA_PASSWORD}" -Q "SELECT 1" || exit 1

# تشغيل SQL Server عند بدء تشغيل الحاوية
CMD ["/opt/mssql/bin/sqlservr"]

