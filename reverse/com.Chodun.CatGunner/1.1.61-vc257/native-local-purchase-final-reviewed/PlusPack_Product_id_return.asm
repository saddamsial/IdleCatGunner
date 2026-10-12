02c90bfc  str x30,[sp, #-0x20]!
02c90c00  stp x20,x19,[sp, #0x10]
02c90c04  adrp x20,0x625c000
02c90c08  mov w19,w0
02c90c0c  ldrb w8,[x20, #0x3ec]
02c90c10  tbnz w8,#0x0,0x02c90c40
02c90c14  adrp x0,0x5e64000
02c90c18  ldr x0,[x0, #0x130]
02c90c1c  bl 0x029f5a50
02c90c20  adrp x0,0x5e64000
02c90c24  ldr x0,[x0, #0x138]
02c90c28  bl 0x029f5a50
02c90c2c  adrp x0,0x5e64000
02c90c30  ldr x0,[x0, #0x140]
02c90c34  bl 0x029f5a50
02c90c38  mov w8,#0x1
02c90c3c  strb w8,[x20, #0x3ec]
02c90c40  cmp w19,#0x2
02c90c44  b.eq 0x02c90c6c
02c90c48  cmp w19,#0x1
02c90c4c  b.eq 0x02c90c60
02c90c50  cbnz w19,0x02c90c7c
02c90c54  adrp x8,0x5e64000
02c90c58  ldr x8,[x8, #0x130]
02c90c5c  b 0x02c90c74
02c90c60  adrp x8,0x5e64000
02c90c64  ldr x8,[x8, #0x140]
02c90c68  b 0x02c90c74
02c90c6c  adrp x8,0x5e64000
02c90c70  ldr x8,[x8, #0x138]
02c90c74  ldr x0,[x8]
02c90c78  b 0x02c90c80
02c90c7c  mov x0,xzr
02c90c80  ldp x20,x19,[sp, #0x10]
02c90c84  ldr x30,[sp], #0x20
02c90c88  ret
