02ba6b60  stp x30,x19,[sp, #-0x10]!
02ba6b64  mov x19,x0
02ba6b68  bl 0x02ba638c
02ba6b6c  cmn w0,#0x1
02ba6b70  b.eq 0x02ba6b8c
02ba6b74  ldr w8,[x19, #0x48]
02ba6b78  cmp w0,w8
02ba6b7c  b.ge 0x02ba6b8c
02ba6b80  ldr x8,[x19, #0x98]
02ba6b84  cbnz x8,0x02ba6b98
02ba6b88  b 0x02ba6bb8
02ba6b8c  ldr x8,[x19, #0x98]
02ba6b90  cbz x8,0x02ba6bb8
02ba6b94  ldr w0,[x19, #0x48]
02ba6b98  ldr w8,[x8, #0x18]
02ba6b9c  sub w8,w8,#0x1
02ba6ba0  cmp w0,w8
02ba6ba4  csel w8,w0,w8,lt
02ba6ba8  cmp w0,#0x0
02ba6bac  csel w0,wzr,w8,lt
02ba6bb0  ldp x30,x19,[sp], #0x10
02ba6bb4  ret
02ba6bb8  bl 0x029f5cfc
