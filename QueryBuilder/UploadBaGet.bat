set progetto=SqlKataKube

del /s %progetto%.*.*nupkg
dotnet pack -p:IncludeSymbols=true -p:SymbolPackageFormat=snupkg
for /f "delims=" %%a in ('dir /b /aa /on "bin\Release\%progetto%.*.nupkg"') do set ver=%%a
dotnet nuget push bin\Release\%ver% -s https://assistbatch:5959/nuget/KubeNugets/ -ss https://assistbatch:5959/symbols/KubeNugets -k f54a41657b26bcf8ad690ba738d41cf748544920 -sk f54a41657b26bcf8ad690ba738d41cf748544920


ECHO FINITO!
pause

REM Se ci sono pi� progetti nella stessa cartella:
REM dotnet pack %progetto%.csproj -p:IncludeSymbols=true -p:SymbolPackageFormat=snupkg
