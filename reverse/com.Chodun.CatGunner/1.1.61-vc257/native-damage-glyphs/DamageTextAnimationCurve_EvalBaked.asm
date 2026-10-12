02b82a5c  str x30,[sp, #-0x10]!
02b82a60  fcmp s0,#0.0
02b82a64  b.ls 0x02b82ad8
02b82a68  fmov s1,0x3f800000
02b82a6c  fcmp s0,s1
02b82a70  b.ge 0x02b82aec
02b82a74  mov w8,#0x42800000
02b82a78  fcvtzs w9,s0,#0x6
02b82a7c  fmov s1,w8
02b82a80  mov w8,#0x7f800000
02b82a84  fmul s1,s0,s1
02b82a88  fmov s0,w8
02b82a8c  mov w8,#0x80000000
02b82a90  fcmp s1,s0
02b82a94  csel w8,w8,w9,eq
02b82a98  cbz x0,0x02b82b0c
02b82a9c  ldr w10,[x0, #0x18]
02b82aa0  cmp w8,w10
02b82aa4  b.cs 0x02b82b08
02b82aa8  add w9,w8,#0x1
02b82aac  cmp w9,w10
02b82ab0  b.cs 0x02b82b08
02b82ab4  scvtf s0,w8
02b82ab8  add x10,x0,#0x20
02b82abc  ldr s2,[x10,w8, sxtw #2]
02b82ac0  ldr s3,[x10,w9, sxtw #2]
02b82ac4  fsub s3,s3,s2
02b82ac8  fsub s0,s1,s0
02b82acc  fmul s0,s0,s3
02b82ad0  fadd s0,s2,s0
02b82ad4  b 0x02b82b00
02b82ad8  cbz x0,0x02b82b0c
02b82adc  ldr w8,[x0, #0x18]
02b82ae0  cbz w8,0x02b82b08
02b82ae4  ldr s0,[x0, #0x20]
02b82ae8  b 0x02b82b00
02b82aec  cbz x0,0x02b82b0c
02b82af0  ldr w8,[x0, #0x18]
02b82af4  cmp w8,#0x40
02b82af8  b.ls 0x02b82b08
02b82afc  ldr s0,[x0, #0x120]
02b82b00  ldr x30,[sp], #0x10
02b82b04  ret
02b82b08  bl 0x029f5d04
02b82b0c  bl 0x029f5cfc
