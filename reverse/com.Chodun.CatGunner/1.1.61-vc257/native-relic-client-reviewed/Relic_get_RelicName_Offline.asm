02be1798  sub sp,sp,#0x30
02be179c  str x30,[sp, #0x10]
02be17a0  stp x20,x19,[sp, #0x20]
02be17a4  adrp x20,0x625b000
02be17a8  adrp x19,0x5e5e000
02be17ac  ldrb w8,[x20, #0xc79]
02be17b0  ldr x19,[x19, #0x528]
02be17b4  tbnz w8,#0x0,0x02be17d8
02be17b8  adrp x0,0x5e5e000
02be17bc  ldr x0,[x0, #0x528]
02be17c0  bl 0x029f5a50
02be17c4  adrp x0,0x5e60000
02be17c8  ldr x0,[x0, #0xe70]
02be17cc  bl 0x029f5a50
02be17d0  mov w8,#0x1
02be17d4  strb w8,[x20, #0xc79]
02be17d8  ldr x0,[x19]
02be17dc  adrp x19,0x5e60000
02be17e0  ldr w8,[x0, #0xe4]
02be17e4  ldr x19,[x19, #0xe70]
02be17e8  cbnz w8,0x02be17f0
02be17ec  bl 0x029f5bd0
02be17f0  ldr x0,[x19]
02be17f4  mov w1,#0x1
02be17f8  mov w2,wzr
02be17fc  mov w3,#0x1
02be1800  mov w4,wzr
02be1804  mov x5,xzr
02be1808  mov x6,xzr
02be180c  mov w7,#0x1
02be1810  str xzr,[sp]
02be1814  bl 0x02bccb00
02be1818  ldp x20,x19,[sp, #0x20]
02be181c  ldr x30,[sp, #0x10]
02be1820  add sp,sp,#0x30
02be1824  ret
