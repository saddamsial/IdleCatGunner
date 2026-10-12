02b85ad4  ldr x8,[x0, #0x78]
02b85ad8  cbz x8,0x02b85b00
02b85adc  ldr s0,[x0, #0x50]
02b85ae0  fmov s1,0x3f000000
02b85ae4  scvtf s0,s0
02b85ae8  fmul s0,s0,s1
02b85aec  ldr s1,[x8, #0x30]
02b85af0  fsub s1,s1,s0
02b85af4  str s1,[x8, #0x30]
02b85af8  ldr x8,[x8, #0x10]
02b85afc  cbnz x8,0x02b85aec
02b85b00  ret
