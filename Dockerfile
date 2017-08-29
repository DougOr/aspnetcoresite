# https://stormpath.com/blog/tutorial-deploy-asp-net-core-on-linux-with-docker
# docker build -t aspnetcoresite  .
# docker run -it -p 8080:5000 aspnetcoresite
# curl http://localhost:5000

FROM microsoft/dotnet:latest
COPY aspnetcoresite /app
WORKDIR /app
 
RUN ["dotnet", "restore"]
RUN ["dotnet", "build"]
 
EXPOSE 5000/tcp
ENV ASPNETCORE_URLS http://*:5000
 
ENTRYPOINT ["dotnet", "run"]
