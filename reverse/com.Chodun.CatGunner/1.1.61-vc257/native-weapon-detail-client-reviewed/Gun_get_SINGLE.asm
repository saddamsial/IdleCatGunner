02be0a18  sub sp,sp,#0x30
02be0a1c  str x30,[sp, #0x10]
02be0a20  stp x20,x19,[sp, #0x20]
02be0a24  adrp x20,0x625b000
02be0a28  adrp x19,0x5e5e000
02be0a2c  ldrb w8,[x20, #0xc61]
02be0a30  ldr x19,[x19, #0x528]
02be0a34  tbnz w8,#0x0,0x02be0a58
02be0a38  adrp x0,0x5e5e000
02be0a3c  ldr x0,[x0, #0x528]
02be0a40  bl 0x029f5a50
02be0a44  adrp x0,0x5e60000
02be0a48  ldr x0,[x0, #0xdb0]
02be0a4c  bl 0x029f5a50
02be0a50  mov w8,#0x1
02be0a54  strb w8,[x20, #0xc61]
02be0a58  ldr x0,[x19]
02be0a5c  adrp x19,0x5e60000
02be0a60  ldr w8,[x0, #0xe4]
02be0a64  ldr x19,[x19, #0xdb0]
02be0a68  cbnz w8,0x02be0a70
02be0a6c  bl 0x029f5bd0
02be0a70  ldr x0,[x19]
02be0a74  mov w1,#0x1
02be0a78  mov w2,wzr
02be0a7c  mov w3,#0x1
02be0a80  mov w4,wzr
02be0a84  mov x5,xzr
02be0a88  mov x6,xzr
02be0a8c  mov w7,#0x1
02be0a90  str xzr,[sp]
02be0a94  bl 0x02bccb00
02be0a98  ldp x20,x19,[sp, #0x20]
02be0a9c  ldr x30,[sp, #0x10]
02be0aa0  add sp,sp,#0x30
02be0aa4  ret
