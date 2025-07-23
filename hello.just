# use PowerShell instead of sh:
set shell := ["powershell.exe", "-c"]

hello:
  Write-Host "Hello"

comma:
  Write-Host ", "

world:
  Write-Host "World!"
