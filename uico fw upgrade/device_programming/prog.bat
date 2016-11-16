nrfjprog.exe --eraseall
nrfjprog.exe --reset 
nrfjprog.exe --clockspeed 2000

echo "bin to hex convert"
nrfjprog.exe  --program .\s110_nrf51_8.0.0_softdevice.hex --verify
nrfjprog.exe  --program .\%1% --verify
nrfjprog.exe  --program	.\lemonBootloader.hex --verify
nrfjprog.exe   --pinreset 