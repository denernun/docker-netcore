FROM mcr.microsoft.com/dotnet/sdk:3.1 AS build-env
WORKDIR /app
COPY *.csproj ./
RUN dotnet restore
COPY . ./
RUN dotnet publish -o out

FROM mcr.microsoft.com/dotnet/aspnet:3.1
WORKDIR /app
COPY --from=build-env /app/out ./
ENV ASPNETCORE_ENVIRONMENT=Development
ENTRYPOINT dotnet Emissor.dll
