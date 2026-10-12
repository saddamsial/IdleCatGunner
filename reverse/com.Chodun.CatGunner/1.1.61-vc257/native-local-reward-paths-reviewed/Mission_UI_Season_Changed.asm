02c04a90  stp x30,x23,[sp, #-0x30]!
02c04a94  stp x22,x21,[sp, #0x10]
02c04a98  stp x20,x19,[sp, #0x20]
02c04a9c  adrp x21,0x625b000
02c04aa0  adrp x20,0x5e5d000
02c04aa4  mov x19,x0
02c04aa8  ldrb w8,[x21, #0xe65]
02c04aac  ldr x20,[x20, #0xd50]
02c04ab0  tbnz w8,#0x0,0x02c04af8
02c04ab4  adrp x0,0x5e59000
02c04ab8  ldr x0,[x0, #0x760]
02c04abc  bl 0x029f5a50
02c04ac0  adrp x0,0x5e59000
02c04ac4  ldr x0,[x0, #0x7d0]
02c04ac8  bl 0x029f5a50
02c04acc  adrp x0,0x5e5d000
02c04ad0  ldr x0,[x0, #0xd50]
02c04ad4  bl 0x029f5a50
02c04ad8  adrp x0,0x5e61000
02c04adc  ldr x0,[x0, #0xf30]
02c04ae0  bl 0x029f5a50
02c04ae4  adrp x0,0x5e61000
02c04ae8  ldr x0,[x0, #0xf38]
02c04aec  bl 0x029f5a50
02c04af0  mov w8,#0x1
02c04af4  strb w8,[x21, #0xe65]
02c04af8  ldr x0,[x20]
02c04afc  ldr w8,[x0, #0xe4]
02c04b00  cbnz w8,0x02c04b0c
02c04b04  bl 0x029f5bd0
02c04b08  ldr x0,[x20]
02c04b0c  ldr x8,[x0, #0xb8]
02c04b10  ldr x21,[x8, #0x8]
02c04b14  cbz x21,0x02c04bbc
02c04b18  adrp x8,0x5e59000
02c04b1c  adrp x20,0x5e59000
02c04b20  ldr x8,[x8, #0x760]
02c04b24  ldr x0,[x8]
02c04b28  ldr w8,[x0, #0xe4]
02c04b2c  ldr x20,[x20, #0x7d0]
02c04b30  cbnz w8,0x02c04b38
02c04b34  bl 0x029f5bd0
02c04b38  adrp x23,0x5e61000
02c04b3c  adrp x22,0x5e61000
02c04b40  mov x0,xzr
02c04b44  ldr x23,[x23, #0xf38]
02c04b48  ldr x22,[x22, #0xf30]
02c04b4c  bl 0x047e2b38
02c04b50  ldr x8,[x20]
02c04b54  mov x20,x0
02c04b58  ldr w9,[x8, #0xe4]
02c04b5c  cbnz w9,0x02c04b68
02c04b60  mov x0,x8
02c04b64  bl 0x029f5bd0
02c04b68  ldr x1,[x23]
02c04b6c  add x0,x21,#0x68
02c04b70  mov x2,x20
02c04b74  mov x3,xzr
02c04b78  bl 0x04832440
02c04b7c  ldr x8,[x22]
02c04b80  ldr x19,[x19, #0x28]
02c04b84  mov x1,x0
02c04b88  mov x2,xzr
02c04b8c  mov x0,x8
02c04b90  bl 0x046b6c0c
02c04b94  cbz x19,0x02c04bbc
02c04b98  ldr x8,[x19]
02c04b9c  mov x1,x0
02c04ba0  mov x0,x19
02c04ba4  ldp x20,x19,[sp, #0x20]
02c04ba8  ldp x22,x21,[sp, #0x10]
02c04bac  ldr x2,[x8, #0x560]
02c04bb0  ldr x3,[x8, #0x558]
02c04bb4  ldp x30,x23,[sp], #0x30
02c04bb8  br x3
02c04bbc  bl 0x029f5cfc
