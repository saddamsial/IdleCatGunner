02c08a04  str d8,[sp, #-0x20]!
02c08a08  stp x30,x19,[sp, #0x10]
02c08a0c  fmov s8,s0
02c08a10  cbz x0,0x02c08a3c
02c08a14  ldr x1,[x0, #0x28]
02c08a18  ldr x9,[x0, #0x18]
02c08a1c  ldr x8,[x0, #0x40]
02c08a20  mov x0,x8
02c08a24  blr x9
02c08a28  fmov s8,s0
02c08a2c  ldp x30,x19,[sp, #0x10]
02c08a30  fmov s0,s8
02c08a34  ldr d8,[sp], #0x20
02c08a38  ret
02c08a3c  bl 0x029f5cfc
