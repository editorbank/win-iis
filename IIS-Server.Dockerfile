FROM mcr.microsoft.com/windows/servercore/iis:20211214-windowsservercore-20H2
RUN powershell -NoProfile -Command Remove-Item -Recurse C:\inetpub\wwwroot\*
WORKDIR /inetpub/wwwroot
COPY IIS-Server.Content/ .