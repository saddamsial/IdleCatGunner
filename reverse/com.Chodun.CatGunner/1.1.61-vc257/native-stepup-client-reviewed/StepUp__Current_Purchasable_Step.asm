02ca2b54  str x30,[sp, #-0x20]!
02ca2b58  stp x20,x19,[sp, #0x10]
02ca2b5c  mov x20,x0
02ca2b60  mov w19,wzr
02ca2b64  mov x0,x20
02ca2b68  mov w1,w19
02ca2b6c  bl 0x02ca2a94
02ca2b70  tbnz w0,#0x0,0x02ca2b84
02ca2b74  add w19,w19,#0x1
02ca2b78  cmp w19,#0x5
02ca2b7c  b.ne 0x02ca2b64
02ca2b80  mov w19,#0xffffffff
02ca2b84  mov w0,w19
02ca2b88  ldp x20,x19,[sp, #0x10]
02ca2b8c  ldr x30,[sp], #0x20
02ca2b90  ret
