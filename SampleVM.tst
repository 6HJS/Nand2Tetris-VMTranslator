load SampleVM.vm,
output-file SampleVM.cmp,
output-list RAM[0]%D2.8.2 RAM[256]%D2.8.2 RAM[257]%D2.8.2 RAM[258]%D2.8.2 RAM[16]%D2.8.2;

set sp 256,
set RAM[16] 0,
set RAM[256] 0,
set RAM[257] 0,
set RAM[258] 0,

repeat 103 {
  vmstep; output;
}