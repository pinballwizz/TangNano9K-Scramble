copy /b 2d + 2e + 2f + 2h + 2j + 2l + 2m + 2p main.bin

make_vhdl_prom main.bin ROM_PGM.vhd

make_vhdl_prom 5h ROM_OBJ_0.vhd
make_vhdl_prom 5f ROM_OBJ_1.vhd

make_vhdl_prom ot1.5c ROM_SND_0.vhd
make_vhdl_prom ot2.5d ROM_SND_1.vhd
make_vhdl_prom ot3.5e ROM_SND_2.vhd

make_vhdl_prom c01s.6e ROM_LUT.vhd

pause