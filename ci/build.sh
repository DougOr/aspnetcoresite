#!/bin/bash
cd aspnetcoresite

dotnet restore
dotnet build

docker build -t aspnetcoresite .
