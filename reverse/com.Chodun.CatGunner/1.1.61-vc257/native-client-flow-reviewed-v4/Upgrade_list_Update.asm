02cb1c78  str x30,[sp, #-0x20]!
02cb1c7c  stp x20,x19,[sp, #0x10]
02cb1c80  adrp x20,0x625c000
02cb1c84  mov x19,x0
02cb1c88  ldrb w8,[x20, #0x550]
02cb1c8c  tbnz w8,#0x0,0x02cb1cb0
02cb1c90  adrp x0,0x5e62000
02cb1c94  ldr x0,[x0, #0x670]
02cb1c98  bl 0x029f5a50
02cb1c9c  adrp x0,0x5e5d000
02cb1ca0  ldr x0,[x0, #0x4e8]
02cb1ca4  bl 0x029f5a50
02cb1ca8  mov w8,#0x1
02cb1cac  strb w8,[x20, #0x550]
02cb1cb0  ldrb w8,[x19, #0x28]
02cb1cb4  cbz w8,0x02cb1d1c
02cb1cb8  adrp x20,0x5e5d000
02cb1cbc  ldr x20,[x20, #0x4e8]
02cb1cc0  ldr x0,[x20]
02cb1cc4  ldr w8,[x0, #0xe4]
02cb1cc8  cbnz w8,0x02cb1cd0
02cb1ccc  bl 0x029f5bd0
02cb1cd0  bl 0x02cb1d6c
02cb1cd4  tbz w0,#0x0,0x02cb1d28
02cb1cd8  adrp x8,0x5e62000
02cb1cdc  ldr x8,[x8, #0x670]
02cb1ce0  ldr x8,[x8]
02cb1ce4  ldr x8,[x8, #0xb8]
02cb1ce8  ldrb w8,[x8]
02cb1cec  cbnz w8,0x02cb1d28
02cb1cf0  ldr x0,[x20]
02cb1cf4  ldr w8,[x0, #0xe4]
02cb1cf8  cbnz w8,0x02cb1d04
02cb1cfc  bl 0x029f5bd0
02cb1d00  ldr x0,[x20]
02cb1d04  ldr x8,[x0, #0xb8]
02cb1d08  ldr x0,[x8]
02cb1d0c  cbz x0,0x02cb1d64
02cb1d10  bl 0x02cb1dfc
02cb1d14  tbz w0,#0x0,0x02cb1d28
02cb1d18  strb wzr,[x19, #0x28]
02cb1d1c  ldp x20,x19,[sp, #0x10]
02cb1d20  ldr x30,[sp], #0x20
02cb1d24  ret
02cb1d28  ldr x8,[x19, #0x20]
02cb1d2c  cbz x8,0x02cb1d64
02cb1d30  mov x20,xzr
02cb1d34  ldr w9,[x8, #0x18]
02cb1d38  cmp w20,w9
02cb1d3c  b.ge 0x02cb1d18
02cb1d40  cmp w20,w9
02cb1d44  b.cs 0x02cb1d68
02cb1d48  add x8,x8,x20, LSL #0x3
02cb1d4c  ldr x0,[x8, #0x20]
02cb1d50  cbz x0,0x02cb1d64
02cb1d54  bl 0x02cb0e4c
02cb1d58  ldr x8,[x19, #0x20]
02cb1d5c  add x20,x20,#0x1
02cb1d60  cbnz x8,0x02cb1d34
02cb1d64  bl 0x029f5cfc
02cb1d68  bl 0x029f5d04
