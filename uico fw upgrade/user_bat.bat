::uico firmware file name 
::if needed u can change it
set VAR_UICO_FILE_NAME=Uico.bin
set VAR_CLING_BIN_NAME=Lemon.bin
set VAR_CLING_HEX_NAME=LemonNFC.hex

echo  %VAR_UICO_FILE_NAME%
echo  %VAR_CLING_FILE_NAME%
echo  %VAR_CLING_HEX_NAME%
cd ./device_programming
call merge.bat %VAR_UICO_FILE_NAME% %VAR_CLING_BIN_NAME%
call bintohex.bat %VAR_CLING_BIN_NAME% %VAR_CLING_HEX_NAME%
call prog.bat %VAR_CLING_HEX_NAME%
cd ..
pause