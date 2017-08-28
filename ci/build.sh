#!/bin/bash
pwd
#cd aspnetcoresite
ls

dotnet restore
dotnet build

docker build -t aspnetcoresite .
