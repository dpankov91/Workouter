FROM mcr.microsoft.com/dotnet/aspnet
WORKDIR /app
COPY ./src/UI/wwwroot ./wwwroot
ENTRYPOINT ["dotnet", "UI.dll"]