#!/bin/bash
#cd ci
pwd
cd aspnetcoresite

set -e -x

dotnet restore
dotnet build

#docker build -t aspnetcoresite .
