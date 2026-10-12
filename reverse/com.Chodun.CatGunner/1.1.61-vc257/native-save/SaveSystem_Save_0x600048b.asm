02c16a38  str x30,[sp, #-0x30]!
02c16a3c  stp x22,x21,[sp, #0x10]
02c16a40  stp x20,x19,[sp, #0x20]
02c16a44  adrp x20,0x625b000
02c16a48  adrp x21,0x5e5d000
02c16a4c  mov x19,x0
02c16a50  ldrb w8,[x20, #0xef2]
02c16a54  ldr x21,[x21, #0xf00]
02c16a58  tbnz w8,#0x0,0x02c16a94
02c16a5c  adrp x0,0x5e5d000
02c16a60  ldr x0,[x0, #0xf00]
02c16a64  bl 0x029f5a50
02c16a68  adrp x0,0x5e62000
02c16a6c  ldr x0,[x0, #0x6e8]
02c16a70  bl 0x029f5a50
02c16a74  adrp x0,0x5e62000
02c16a78  ldr x0,[x0, #0x6f0]
02c16a7c  bl 0x029f5a50
02c16a80  adrp x0,0x5e62000
02c16a84  ldr x0,[x0, #0x6f8]
02c16a88  bl 0x029f5a50
02c16a8c  mov w8,#0x1
02c16a90  strb w8,[x20, #0xef2]
02c16a94  ldr x8,[x21]
02c16a98  ldr x8,[x8, #0xb8]
02c16a9c  ldrb w8,[x8]
02c16aa0  cbz w8,0x02c16b70
02c16aa4  adrp x20,0x5e62000
02c16aa8  adrp x21,0x5e62000
02c16aac  adrp x22,0x5e62000
02c16ab0  ldr x20,[x20, #0x6f0]
02c16ab4  ldr x21,[x21, #0x6e8]
02c16ab8  ldr x22,[x22, #0x6f8]
02c16abc  bl 0x02c16848
02c16ac0  mov x1,xzr
02c16ac4  bl 0x048111a4
02c16ac8  tbnz w0,#0x0,0x02c16ad8
02c16acc  bl 0x02c16848
02c16ad0  mov x1,xzr
02c16ad4  bl 0x04811018
02c16ad8  bl 0x02c16848
02c16adc  ldr x1,[x20]
02c16ae0  mov x2,xzr
02c16ae4  bl 0x046b2d44
02c16ae8  mov x20,x0
02c16aec  bl 0x02c16848
02c16af0  ldr x1,[x21]
02c16af4  mov x2,xzr
02c16af8  bl 0x046b2d44
02c16afc  mov x21,x0
02c16b00  bl 0x02c16848
02c16b04  ldr x1,[x22]
02c16b08  mov x2,xzr
02c16b0c  bl 0x046b2d44
02c16b10  mov x22,x0
02c16b14  mov x0,x21
02c16b18  mov x1,x19
02c16b1c  mov x2,xzr
02c16b20  bl 0x04812818
02c16b24  mov x0,x20
02c16b28  mov x1,xzr
02c16b2c  bl 0x048048bc
02c16b30  tbz w0,#0x0,0x02c16b60
02c16b34  mov x0,x22
02c16b38  mov x1,xzr
02c16b3c  bl 0x048048bc
02c16b40  tbz w0,#0x0,0x02c16b50
02c16b44  mov x0,x22
02c16b48  mov x1,xzr
02c16b4c  bl 0x048122f4
02c16b50  mov x0,x20
02c16b54  mov x1,x22
02c16b58  mov x2,xzr
02c16b5c  bl 0x0481357c
02c16b60  mov x0,x21
02c16b64  mov x1,x20
02c16b68  mov x2,xzr
02c16b6c  bl 0x0481357c
02c16b70  ldp x20,x19,[sp, #0x20]
02c16b74  ldp x22,x21,[sp, #0x10]
02c16b78  ldr x30,[sp], #0x30
02c16b7c  ret
