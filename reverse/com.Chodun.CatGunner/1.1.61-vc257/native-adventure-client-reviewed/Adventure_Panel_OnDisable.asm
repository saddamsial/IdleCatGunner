02c35a18  str x30,[sp, #-0x20]!
02c35a1c  stp x20,x19,[sp, #0x10]
02c35a20  adrp x20,0x625c000
02c35a24  mov x19,x0
02c35a28  ldrb w8,[x20, #0x62]
02c35a2c  tbnz w8,#0x0,0x02c35a44
02c35a30  adrp x0,0x5e5d000
02c35a34  ldr x0,[x0, #0x5b0]
02c35a38  bl 0x029f5a50
02c35a3c  mov w8,#0x1
02c35a40  strb w8,[x20, #0x62]
02c35a44  ldr x0,[x19, #0x38]
02c35a48  cbz x0,0x02c35a78
02c35a4c  adrp x19,0x5e5d000
02c35a50  mov w1,wzr
02c35a54  mov x2,xzr
02c35a58  ldr x19,[x19, #0x5b0]
02c35a5c  bl 0x057dff3c
02c35a60  ldr x8,[x19]
02c35a64  ldp x20,x19,[sp, #0x10]
02c35a68  ldr x8,[x8, #0xb8]
02c35a6c  strb wzr,[x8]
02c35a70  ldr x30,[sp], #0x20
02c35a74  ret
02c35a78  bl 0x029f5cfc
