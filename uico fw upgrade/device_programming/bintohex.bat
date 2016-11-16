del %2
ping localhost -n 1 > nul

.\binhextool\srec_cat ../cling_binary/%1  -binary -offset 0x00018000  -Output_Block_Size 16 -o %2 -intel
