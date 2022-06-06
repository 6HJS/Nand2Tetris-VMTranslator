load SampleVM.asm,
output-file SampleVM.out,
compare-to SampleVM.cmp,
output-list RAM[0]%D2.8.2 RAM[256]%D2.8.2 RAM[257]%D2.8.2 RAM[258]%D2.8.2 RAM[16]%D2.8.2;

set RAM[0] 256,
set RAM[16] 0,
set RAM[256] 0,
set RAM[257] 0,
set RAM[258] 0,


repeat 7 {// push constant 1
  ticktock;
}
output;

repeat 7 {// push constant 2
  ticktock;
}
output;

repeat 5 {// add
  ticktock;
}
output;

repeat 12 {// pop static 0
  ticktock;
}
output;


repeat 7 {// push constant 0
  ticktock;
}
output;

repeat 7 {// push constant 0
  ticktock;
}
output;

repeat 5 {// add
  ticktock;
}
output;

repeat 12 {// pop static 0
  ticktock;
}
output;


repeat 7 {// push constant 32767
  ticktock;
}
output;

repeat 7 {// push constant 1
  ticktock;
}
output;

repeat 5 {// add
  ticktock;
}
output;

repeat 12 {// pop static 0
  ticktock;
}
output;

repeat 7 {// push constant 2
  ticktock;
}
output;

repeat 7 {// push constant 1
  ticktock;
}
output;

repeat 5 {// sub
  ticktock;
}
output;

repeat 12 {// pop static 0
  ticktock;
}
output;

repeat 7 {// push constant 0
  ticktock;
}
output;

repeat 7 {// push constant 32767
  ticktock;
}
output;

repeat 5 {// sub
  ticktock;
}
output;

repeat 7 {// push constant 1
  ticktock;
}
output;

repeat 5 {// sub
  ticktock;
}
output;

repeat 12 {// pop static 0
  ticktock;
}
output;

repeat 7 {// push constant 1
  ticktock;
}
output;

repeat 4 {// neg
  ticktock;
}
output;

repeat 12 {// pop static 0
  ticktock;
}
output;


repeat 7 {// push constant 0
  ticktock;
}
output;

repeat 4 {// neg
  ticktock;
}
output;

repeat 12 {// pop static 0
  ticktock;
}
output;

repeat 7 {// push constant 32767
  ticktock;
}
output;

repeat 4 {// neg
  ticktock;
}
output;

repeat 12 {// pop static 0
  ticktock;
}
output;


repeat 7 {// push constant 1
  ticktock;
}
output;

repeat 7 {// push constant 1
  ticktock;
}
output;


repeat 19 {// eq
  ticktock;
}
output;

repeat 12 {// pop static 0
  ticktock;
}
output;


repeat 7 {// push constant 0
  ticktock;
}
output;

repeat 7 {// push constant 1
  ticktock;
}
output;


repeat 19 {// eq
  ticktock;
}
output;

repeat 12 {// pop static 0
  ticktock;
}
output;


repeat 7 {// push constant 1
  ticktock;
}
output;

repeat 7 {// push constant 0
  ticktock;
}
output;


repeat 19 {// gt
  ticktock;
}
output;

repeat 12 {// pop static 0
  ticktock;
}
output;


repeat 7 {// push constant 1
  ticktock;
}
output;

repeat 7 {// push constant 1
  ticktock;
}
output;


repeat 19 {// gt
  ticktock;
}
output;

repeat 12 {// pop static 0
  ticktock;
}
output;


repeat 7 {// push constant 0
  ticktock;
}
output;

repeat 7 {// push constant 1
  ticktock;
}
output;


repeat 19 {// gt
  ticktock;
}
output;

repeat 12 {// pop static 0
  ticktock;
}
output;


repeat 7 {// push constant 1
  ticktock;
}
output;

repeat 7 {// push constant 0
  ticktock;
}
output;


repeat 19 {// eq
  ticktock;
}
output;

repeat 12 {// pop static 0
  ticktock;
}
output;


repeat 7 {// push constant 1
  ticktock;
}
output;

repeat 7 {// push constant 1
  ticktock;
}
output;


repeat 19 {// lt
  ticktock;
}
output;

repeat 12 {// pop static 0
  ticktock;
}
output;


repeat 7 {// push constant 0
  ticktock;
}
output;

repeat 7 {// push constant 1
  ticktock;
}
output;


repeat 19 {// lt
  ticktock;
}
output;

repeat 12 {// pop static 0
  ticktock;
}
output;


repeat 7 {// push constant 1
  ticktock;
}
output;

repeat 7 {// push constant 0
  ticktock;
}
output;


repeat 19 {// lt
  ticktock;
}
output;

repeat 12 {// pop static 0
  ticktock;
}
output;


repeat 7 {// push constant 0
  ticktock;
}
output;

repeat 7 {// push constant 0
  ticktock;
}
output;

repeat 5 {// and
  ticktock;
}
output;

repeat 12 {// pop static 0
  ticktock;
}
output;

repeat 7 {// push constant 0
  ticktock;
}
output;

repeat 7 {// push constant 1
  ticktock;
}
output;

repeat 5 {// and
  ticktock;
}
output;

repeat 12 {// pop static 0
  ticktock;
}
output;

repeat 7 {// push constant 1
  ticktock;
}
output;

repeat 7 {// push constant 1
  ticktock;
}
output;

repeat 5 {// and
  ticktock;
}
output;

repeat 12 {// pop static 0
  ticktock;
}
output;

repeat 7 {// push constant 0
  ticktock;
}
output;

repeat 7 {// push constant 0
  ticktock;
}
output;

repeat 5 {// or
  ticktock;
}
output;

repeat 12 {// pop static 0
  ticktock;
}
output;

repeat 7 {// push constant 0
  ticktock;
}
output;

repeat 7 {// push constant 1
  ticktock;
}
output;

repeat 5 {// or
  ticktock;
}
output;

repeat 12 {// pop static 0
  ticktock;
}
output;

repeat 7 {// push constant 1
  ticktock;
}
output;

repeat 7 {// push constant 1
  ticktock;
}
output;

repeat 5 {// or
  ticktock;
}
output;

repeat 12 {// pop static 0
  ticktock;
}
output;


repeat 7 {// push constant 0
  ticktock;
}
output;

repeat 4 {// not
  ticktock;
}
output;

repeat 12 {// pop static 0
  ticktock;
}
output;

repeat 7 {// push constant 1
  ticktock;
}
output;

repeat 4 {// not
  ticktock;
}
output;

repeat 12 {// pop static 0
  ticktock;
}
output;

repeat 7 {// push constant 32767
  ticktock;
}
output;

repeat 4 {// not
  ticktock;
}
output;

repeat 12 {// pop static 0
  ticktock;
}
output;