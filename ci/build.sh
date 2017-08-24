#!/bin/bash
cd ci

dotnet restore
dotnet build
