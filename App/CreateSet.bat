REM https://stackoverflow.com/a/2591782/486990
for /l %%x in (1, 1, 10) do (
  CreateMarker.exe marker%%x.png -d=10 -id=%%x
)
