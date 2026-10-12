02ca8828  str x30,[sp, #-0x40]!
02ca882c  stp x24,x23,[sp, #0x10]
02ca8830  stp x22,x21,[sp, #0x20]
02ca8834  stp x20,x19,[sp, #0x30]
02ca8838  adrp x21,0x625c000
02ca883c  adrp x20,0x5e5d000
02ca8840  mov x19,x0
02ca8844  ldrb w8,[x21, #0x4f0]
02ca8848  ldr x20,[x20, #0x338]
02ca884c  tbnz w8,#0x0,0x02ca88ac
02ca8850  adrp x0,0x5e5d000
02ca8854  ldr x0,[x0, #0x5b0]
02ca8858  bl 0x029f5a50
02ca885c  adrp x0,0x5e5d000
02ca8860  ldr x0,[x0, #0x338]
02ca8864  bl 0x029f5a50
02ca8868  adrp x0,0x5e64000
02ca886c  ldr x0,[x0, #0x9d8]
02ca8870  bl 0x029f5a50
02ca8874  adrp x0,0x5e64000
02ca8878  ldr x0,[x0, #0x9e0]
02ca887c  bl 0x029f5a50
02ca8880  adrp x0,0x5e62000
02ca8884  ldr x0,[x0, #0x670]
02ca8888  bl 0x029f5a50
02ca888c  adrp x0,0x5e5d000
02ca8890  ldr x0,[x0, #0xc20]
02ca8894  bl 0x029f5a50
02ca8898  adrp x0,0x5e5d000
02ca889c  ldr x0,[x0, #0x368]
02ca88a0  bl 0x029f5a50
02ca88a4  mov w8,#0x1
02ca88a8  strb w8,[x21, #0x4f0]
02ca88ac  ldr x0,[x20]
02ca88b0  adrp x21,0x5e5d000
02ca88b4  ldr w8,[x0, #0xe4]
02ca88b8  ldr x21,[x21, #0xc20]
02ca88bc  cbnz w8,0x02ca88c8
02ca88c0  bl 0x029f5bd0
02ca88c4  ldr x0,[x20]
02ca88c8  ldr x8,[x21]
02ca88cc  ldr x9,[x0, #0xb8]
02ca88d0  ldr w10,[x8, #0xe4]
02ca88d4  strb wzr,[x9]
02ca88d8  cbnz w10,0x02ca88e8
02ca88dc  mov x0,x8
02ca88e0  bl 0x029f5bd0
02ca88e4  ldr x8,[x21]
02ca88e8  ldr x8,[x8, #0xb8]
02ca88ec  ldr x0,[x8, #0x10]
02ca88f0  cbz x0,0x02ca8a5c
02ca88f4  adrp x20,0x5e62000
02ca88f8  ldr x20,[x20, #0x670]
02ca88fc  bl 0x02ca8b2c
02ca8900  ldr x8,[x20]
02ca8904  ldr x8,[x8, #0xb8]
02ca8908  ldr x0,[x8, #0x8]
02ca890c  cbz x0,0x02ca8a5c
02ca8910  mov x1,xzr
02ca8914  bl 0x02c21688
02ca8918  ldr w8,[x19, #0x30]
02ca891c  mov w10,#0xbe
02ca8920  strh wzr,[x19, #0x54]
02ca8924  strb wzr,[x19, #0x56]
02ca8928  lsl w9,w8,#0x4
02ca892c  str w8,[x19, #0x50]
02ca8930  sub w9,w9,w8
02ca8934  mov w8,#0x14
02ca8938  add w9,w9,#0x14
02ca893c  cmp w9,#0xbe
02ca8940  csel w9,w9,w10,lt
02ca8944  cmp w9,#0x14
02ca8948  csel w20,w9,w8,gt
02ca894c  ldr x8,[x19, #0x28]
02ca8950  stp w20,w20,[x19, #0x58]
02ca8954  cbz x8,0x02ca8a5c
02ca8958  ldp w2,w9,[x8, #0x18]
02ca895c  add w9,w9,#0x1
02ca8960  cmp w2,#0x1
02ca8964  stp wzr,w9,[x8, #0x18]
02ca8968  b.lt 0x02ca897c
02ca896c  ldr x0,[x8, #0x10]
02ca8970  mov w1,wzr
02ca8974  mov x3,xzr
02ca8978  bl 0x04873aac
02ca897c  ldr x8,[x19, #0x20]
02ca8980  cbz x8,0x02ca8a5c
02ca8984  adrp x23,0x5e64000
02ca8988  adrp x22,0x5e5d000
02ca898c  adrp x21,0x5e5d000
02ca8990  ldr x23,[x23, #0x9d8]
02ca8994  ldr x22,[x22, #0x368]
02ca8998  ldr x21,[x21, #0x5b0]
02ca899c  mov x24,xzr
02ca89a0  ldr w9,[x8, #0x18]
02ca89a4  cmp x24,w9, SXTW 
02ca89a8  b.ge 0x02ca8a60
02ca89ac  cmp x24,x20
02ca89b0  b.cs 0x02ca8a10
02ca89b4  cmp x24,x9
02ca89b8  b.cs 0x02ca8b28
02ca89bc  ldr x0,[x19, #0x28]
02ca89c0  cbz x0,0x02ca8a5c
02ca89c4  add x9,x8,x24, LSL #0x3
02ca89c8  ldr w10,[x0, #0x1c]
02ca89cc  ldr x8,[x0, #0x10]
02ca89d0  ldr x1,[x9, #0x20]
02ca89d4  ldr x9,[x23]
02ca89d8  add w10,w10,#0x1
02ca89dc  str w10,[x0, #0x1c]
02ca89e0  cbz x8,0x02ca8a5c
02ca89e4  ldrsw x10,[x0, #0x18]
02ca89e8  ldr w11,[x8, #0x18]
02ca89ec  cmp w10,w11
02ca89f0  b.cs 0x02ca8a40
02ca89f4  add x8,x8,x10, LSL #0x3
02ca89f8  add w9,w10,#0x1
02ca89fc  str w9,[x0, #0x18]
02ca8a00  str x1,[x8, #0x20]!
02ca8a04  mov x0,x8
02ca8a08  bl 0x029f59f4
02ca8a0c  b 0x02ca8a50
02ca8a10  cmp x24,x9
02ca8a14  b.cs 0x02ca8b28
02ca8a18  add x8,x8,x24, LSL #0x3
02ca8a1c  ldr x0,[x8, #0x20]
02ca8a20  cbz x0,0x02ca8a5c
02ca8a24  mov x1,xzr
02ca8a28  bl 0x057dc1c8
02ca8a2c  cbz x0,0x02ca8a5c
02ca8a30  mov w1,wzr
02ca8a34  mov x2,xzr
02ca8a38  bl 0x057dff3c
02ca8a3c  b 0x02ca8a50
02ca8a40  ldr x8,[x9, #0x20]
02ca8a44  ldr x8,[x8, #0xc0]
02ca8a48  ldr x2,[x8, #0x70]
02ca8a4c  bl 0x0452cba8
02ca8a50  ldr x8,[x19, #0x20]
02ca8a54  add x24,x24,#0x1
02ca8a58  cbnz x8,0x02ca89a0
02ca8a5c  bl 0x029f5cfc
02ca8a60  ldr x8,[x22]
02ca8a64  ldr x8,[x8, #0xb8]
02ca8a68  ldr x0,[x8]
02ca8a6c  cbz x0,0x02ca8a5c
02ca8a70  mov w1,#0x1
02ca8a74  mov x2,xzr
02ca8a78  bl 0x02c2a560
02ca8a7c  ldr x8,[x21]
02ca8a80  ldr x8,[x8, #0xb8]
02ca8a84  ldr x0,[x8, #0x8]
02ca8a88  cbz x0,0x02ca8a5c
02ca8a8c  ldp s1,s2,[x19, #0x74]
02ca8a90  mov x1,xzr
02ca8a94  ldr s0,[x19, #0x70]
02ca8a98  bl 0x02c44748
02ca8a9c  ldr x8,[x21]
02ca8aa0  ldr x8,[x8, #0xb8]
02ca8aa4  ldr x0,[x8, #0x8]
02ca8aa8  cbz x0,0x02ca8a5c
02ca8aac  mov x1,xzr
02ca8ab0  bl 0x02c43744
02ca8ab4  adrp x20,0x625b000
02ca8ab8  ldrb w8,[x20, #0xa57]
02ca8abc  cbnz w8,0x02ca8ad4
02ca8ac0  adrp x0,0x5e5d000
02ca8ac4  ldr x0,[x0, #0xd70]
02ca8ac8  bl 0x029f5a50
02ca8acc  mov w8,#0x1
02ca8ad0  strb w8,[x20, #0xa57]
02ca8ad4  adrp x8,0x5e5d000
02ca8ad8  ldr x8,[x8, #0xd70]
02ca8adc  ldr x8,[x8]
02ca8ae0  ldr x8,[x8, #0xb8]
02ca8ae4  ldr x0,[x8]
02ca8ae8  cbz x0,0x02ca8a5c
02ca8aec  fmov s0,0x3f800000
02ca8af0  mov w1,#0xa
02ca8af4  mov x2,xzr
02ca8af8  mov x3,xzr
02ca8afc  bl 0x02c1f10c
02ca8b00  mov x0,x19
02ca8b04  bl 0x02ca8bc8
02ca8b08  mov x1,x0
02ca8b0c  mov x0,x19
02ca8b10  mov x2,xzr
02ca8b14  ldp x20,x19,[sp, #0x30]
02ca8b18  ldp x22,x21,[sp, #0x20]
02ca8b1c  ldp x24,x23,[sp, #0x10]
02ca8b20  ldr x30,[sp], #0x40
02ca8b24  b 0x057e2120
02ca8b28  bl 0x029f5d04
