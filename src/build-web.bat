REM remove the .NET Core 2.1 projects which aren;t used in this build
REM otherwise the nuget restore fails because .NET 4.7.2 can't work with Core 2.1

dotnet restore SignUp.sln
nuget restore SignUp.sln
msbuild SignUp.Web\SignUp.Web.csproj /p:OutputPath=c:\out /p:Configuration=Release