set progetto=SqlKataKube

del /s %progetto%.*.*nupkg
dotnet build -c RELEASE
dotnet pack -p:IncludeSymbols=true -p:SymbolPackageFormat=snupkg
for /f "delims=" %%a in ('dir /b /aa /on "bin\Debug\%progetto%.*.nupkg"') do set ver=%%a
nuget push -Source "http://192.168.3.114:5000/v3/index.json" bin\Debug\%ver%


ECHO FINITO!
pause

REM Se ci sono pi� progetti nella stessa cartella:
REM dotnet pack %progetto%.csproj -p:IncludeSymbols=true -p:SymbolPackageFormat=snupkg
