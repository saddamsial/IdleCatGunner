02ca2a04  str x30,[sp, #-0x20]!
02ca2a08  stp x20,x19,[sp, #0x10]
02ca2a0c  adrp x20,0x625c000
02ca2a10  mov x19,x0
02ca2a14  ldrb w8,[x20, #0x498]
02ca2a18  tbnz w8,#0x0,0x02ca2a30
02ca2a1c  adrp x0,0x5e5a000
02ca2a20  ldr x0,[x0, #0x180]
02ca2a24  bl 0x029f5a50
02ca2a28  mov w8,#0x1
02ca2a2c  strb w8,[x20, #0x498]
02ca2a30  mov x0,x19
02ca2a34  bl 0x02ca2784
02ca2a38  tbz w0,#0x0,0x02ca2a84
02ca2a3c  adrp x20,0x5e5a000
02ca2a40  mov x0,x19
02ca2a44  ldr x20,[x20, #0x180]
02ca2a48  bl 0x02ca28c8
02ca2a4c  ldr x8,[x20]
02ca2a50  mov x19,x0
02ca2a54  ldr w9,[x8, #0xe4]
02ca2a58  cbnz w9,0x02ca2a68
02ca2a5c  mov x0,x8
02ca2a60  bl 0x029f5bd0
02ca2a64  ldr x8,[x20]
02ca2a68  ldr x8,[x8, #0xb8]
02ca2a6c  mov x0,x19
02ca2a70  mov x2,xzr
02ca2a74  ldp x20,x19,[sp, #0x10]
02ca2a78  ldr x1,[x8]
02ca2a7c  ldr x30,[sp], #0x20
02ca2a80  b 0x04868dd8
02ca2a84  ldp x20,x19,[sp, #0x10]
02ca2a88  mov w0,wzr
02ca2a8c  ldr x30,[sp], #0x20
02ca2a90  ret
