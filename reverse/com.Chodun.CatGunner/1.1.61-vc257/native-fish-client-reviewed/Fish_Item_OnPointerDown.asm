02c61bd4  str x30,[sp, #-0x20]!
02c61bd8  stp x20,x19,[sp, #0x10]
02c61bdc  adrp x20,0x625c000
02c61be0  mov x19,x0
02c61be4  ldrb w8,[x20, #0x225]
02c61be8  tbnz w8,#0x0,0x02c61c00
02c61bec  adrp x0,0x5e63000
02c61bf0  ldr x0,[x0, #0x850]
02c61bf4  bl 0x029f5a50
02c61bf8  mov w8,#0x1
02c61bfc  strb w8,[x20, #0x225]
02c61c00  ldrb w8,[x19, #0x86]
02c61c04  cbz w8,0x02c61c14
02c61c08  ldp x20,x19,[sp, #0x10]
02c61c0c  ldr x30,[sp], #0x20
02c61c10  ret
02c61c14  adrp x8,0x5e63000
02c61c18  ldr x8,[x8, #0x850]
02c61c1c  strb wzr,[x19, #0x84]
02c61c20  ldr x8,[x8]
02c61c24  ldr x8,[x8, #0xb8]
02c61c28  ldr x0,[x8]
02c61c2c  mov w8,#0x1
02c61c30  strb w8,[x19, #0xb0]
02c61c34  cbz x0,0x02c61c3c
02c61c38  bl 0x02c60024
02c61c3c  mov x0,x19
02c61c40  bl 0x02c60fe0
02c61c44  ldp s2,s3,[x19, #0x94]
02c61c48  mov x0,x19
02c61c4c  ldp s0,s1,[x19, #0x9c]
02c61c50  ldr s4,[x19, #0xa4]
02c61c54  fmul s0,s0,s2
02c61c58  fmul s1,s1,s2
02c61c5c  fmul s2,s4,s2
02c61c60  bl 0x02c61c8c
02c61c64  mov x1,x0
02c61c68  mov x0,x19
02c61c6c  mov x2,xzr
02c61c70  bl 0x057e2120
02c61c74  str x0,[x19, #0xa8]!
02c61c78  mov x1,x0
02c61c7c  mov x0,x19
02c61c80  ldp x20,x19,[sp, #0x10]
02c61c84  ldr x30,[sp], #0x20
02c61c88  b 0x029f59f4
