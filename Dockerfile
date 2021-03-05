RUN curl -fsSLO https://get.docker.com/builds/Linux/x86_64/docker-17.04.0-ce.tgz \
  && tar xzvf docker-17.04.0-ce.tgz \
  && mv docker/docker /usr/local/bin \
  && rm -r docker docker-17.04.0-ce.tgz
FROM mcr.microsoft.com/dotnet/aspnet
WORKDIR /app
COPY ./src/UI/bin/Debug/net5.0 .
COPY ./src/UI/wwwroot ./wwwroot
ENTRYPOINT ["dotnet", "UI.dll"]
