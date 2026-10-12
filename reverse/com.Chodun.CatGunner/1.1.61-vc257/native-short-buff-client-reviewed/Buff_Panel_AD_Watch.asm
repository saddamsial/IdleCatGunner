02c389f0  str x30,[sp, #-0x30]!
02c389f4  stp x22,x21,[sp, #0x10]
02c389f8  stp x20,x19,[sp, #0x20]
02c389fc  adrp x21,0x625c000
02c38a00  adrp x22,0x5e5d000
02c38a04  adrp x20,0x5e5d000
02c38a08  ldrb w8,[x21, #0x84]
02c38a0c  ldr x22,[x22, #0x910]
02c38a10  ldr x20,[x20, #0x4c0]
02c38a14  mov x19,x0
02c38a18  tbnz w8,#0x0,0x02c38a3c
02c38a1c  adrp x0,0x5e5d000
02c38a20  ldr x0,[x0, #0x910]
02c38a24  bl 0x029f5a50
02c38a28  adrp x0,0x5e5d000
02c38a2c  ldr x0,[x0, #0x4c0]
02c38a30  bl 0x029f5a50
02c38a34  mov w8,#0x1
02c38a38  strb w8,[x21, #0x84]
02c38a3c  ldr x8,[x22]
02c38a40  ldr x0,[x20]
02c38a44  ldr w19,[x19, #0x20]
02c38a48  ldr x8,[x8, #0xb8]
02c38a4c  ldr w9,[x0, #0xe4]
02c38a50  ldr x20,[x8]
02c38a54  cbnz w9,0x02c38a5c
02c38a58  bl 0x029f5bd0
02c38a5c  mov w0,w19
02c38a60  bl 0x02c37fe8
02c38a64  cbz x20,0x02c38a84
02c38a68  mov w1,w0
02c38a6c  mov x0,x20
02c38a70  mov x2,xzr
02c38a74  ldp x20,x19,[sp, #0x20]
02c38a78  ldp x22,x21,[sp, #0x10]
02c38a7c  ldr x30,[sp], #0x30
02c38a80  b 0x02b89ab0
02c38a84  bl 0x029f5cfc
