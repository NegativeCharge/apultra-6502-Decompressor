cd .\tests\
for %%x in (*.apu) do del "%%x" 
for %%x in (*.bin) do ..\tools\apultra.exe -v -w 64768 -c -stats "%%x" "%%~nx.bin.apu"

cd ..
cmd /c "BeebAsm.exe -v -i apultra_test.s.asm -do apultra_test.ssd -opt 3"