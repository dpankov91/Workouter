FROM mcr.microsoft.com/dotnet/aspnet
WORKDIR /app
COPY ./src/UI/wwwroot ./wwwroot
COPY ./src/UI/bin/Debug/net5.0 .
ENTRYPOINT ["dotnet", "UI.dll"]