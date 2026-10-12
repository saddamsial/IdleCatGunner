02c4de0c  stp x30,x23,[sp, #-0x30]!
02c4de10  stp x22,x21,[sp, #0x10]
02c4de14  stp x20,x19,[sp, #0x20]
02c4de18  adrp x20,0x625c000
02c4de1c  adrp x22,0x5e5d000
02c4de20  mov x19,x0
02c4de24  ldrb w8,[x20, #0x13c]
02c4de28  ldr x22,[x22, #0x338]
02c4de2c  tbnz w8,#0x0,0x02c4de68
02c4de30  adrp x0,0x5e5d000
02c4de34  ldr x0,[x0, #0x338]
02c4de38  bl 0x029f5a50
02c4de3c  adrp x0,0x5e5d000
02c4de40  ldr x0,[x0, #0xd58]
02c4de44  bl 0x029f5a50
02c4de48  adrp x0,0x5e5e000
02c4de4c  ldr x0,[x0, #0xb8]
02c4de50  bl 0x029f5a50
02c4de54  adrp x0,0x5e5d000
02c4de58  ldr x0,[x0, #0x920]
02c4de5c  bl 0x029f5a50
02c4de60  mov w8,#0x1
02c4de64  strb w8,[x20, #0x13c]
02c4de68  ldr x0,[x22]
02c4de6c  ldr w8,[x0, #0xe4]
02c4de70  cbnz w8,0x02c4de7c
02c4de74  bl 0x029f5bd0
02c4de78  ldr x0,[x22]
02c4de7c  ldr x8,[x0, #0xb8]
02c4de80  ldrb w8,[x8]
02c4de84  cbz w8,0x02c4df68
02c4de88  adrp x21,0x5e5d000
02c4de8c  adrp x20,0x5e5e000
02c4de90  ldr x21,[x21, #0xd58]
02c4de94  ldr x0,[x21]
02c4de98  ldr w8,[x0, #0xe4]
02c4de9c  ldr x20,[x20, #0xb8]
02c4dea0  cbnz w8,0x02c4deac
02c4dea4  bl 0x029f5bd0
02c4dea8  ldr x0,[x21]
02c4deac  ldr x8,[x20]
02c4deb0  ldr x9,[x0, #0xb8]
02c4deb4  ldr w10,[x8, #0xe4]
02c4deb8  ldr w20,[x9]
02c4debc  cbnz w10,0x02c4dec8
02c4dec0  mov x0,x8
02c4dec4  bl 0x029f5bd0
02c4dec8  mov x0,xzr
02c4decc  bl 0x02c90718
02c4ded0  scvtf s1,w20
02c4ded4  mov w8,#0x7f800000
02c4ded8  ldr w10,[x19, #0x13c]
02c4dedc  ldr x21,[x19, #0x140]
02c4dee0  add x0,x19,#0x13c
02c4dee4  mov x1,xzr
02c4dee8  fmul s0,s0,s1
02c4deec  fmov s1,w8
02c4def0  mov w8,#0x80000000
02c4def4  fcvtzs w9,s0
02c4def8  fcmp s0,s1
02c4defc  csel w20,w8,w9,eq
02c4df00  add w8,w20,w10
02c4df04  str w8,[x19, #0x13c]
02c4df08  bl 0x0484e6a4
02c4df0c  cbz x21,0x02c4e058
02c4df10  ldr x8,[x21]
02c4df14  adrp x23,0x5e5d000
02c4df18  mov x1,x0
02c4df1c  ldr x23,[x23, #0x920]
02c4df20  mov x0,x21
02c4df24  ldr x9,[x8, #0x558]
02c4df28  ldr x2,[x8, #0x560]
02c4df2c  blr x9
02c4df30  ldr x0,[x23]
02c4df34  ldr w8,[x0, #0xe4]
02c4df38  cbnz w8,0x02c4df40
02c4df3c  bl 0x029f5bd0
02c4df40  mov x0,xzr
02c4df44  bl 0x02c92704
02c4df48  mov w8,w0
02c4df4c  ldr x0,[x22]
02c4df50  ldr w9,[x0, #0xe4]
02c4df54  tbz w8,#0x0,0x02c4df78
02c4df58  cbnz w9,0x02c4df60
02c4df5c  bl 0x029f5bd0
02c4df60  lsl w20,w20,#0x1
02c4df64  b 0x02c4df80
02c4df68  ldp x20,x19,[sp, #0x20]
02c4df6c  ldp x22,x21,[sp, #0x10]
02c4df70  ldp x30,x23,[sp], #0x30
02c4df74  ret
02c4df78  cbnz w9,0x02c4df80
02c4df7c  bl 0x029f5bd0
02c4df80  mov w0,w20
02c4df84  mov x1,xzr
02c4df88  bl 0x02b7f098
02c4df8c  ldr w8,[x19, #0x24]
02c4df90  add w8,w8,#0x1
02c4df94  cmp w8,#0x5
02c4df98  str w8,[x19, #0x24]
02c4df9c  b.lt 0x02c4dfac
02c4dfa0  ldr w8,[x19, #0x20]
02c4dfa4  add w8,w8,#0x1
02c4dfa8  stp w8,wzr,[x19, #0x20]
02c4dfac  ldr x0,[x19, #0x100]
02c4dfb0  cbz x0,0x02c4e058
02c4dfb4  mov w1,#0x1
02c4dfb8  mov x2,xzr
02c4dfbc  mov w20,#0x1
02c4dfc0  bl 0x057dff3c
02c4dfc4  adrp x21,0x625b000
02c4dfc8  ldrb w8,[x21, #0xa57]
02c4dfcc  cbnz w8,0x02c4dfe0
02c4dfd0  adrp x0,0x5e5d000
02c4dfd4  ldr x0,[x0, #0xd70]
02c4dfd8  bl 0x029f5a50
02c4dfdc  strb w20,[x21, #0xa57]
02c4dfe0  adrp x8,0x5e5d000
02c4dfe4  ldr x8,[x8, #0xd70]
02c4dfe8  ldr x8,[x8]
02c4dfec  ldr x8,[x8, #0xb8]
02c4dff0  ldr x0,[x8]
02c4dff4  cbz x0,0x02c4e058
02c4dff8  fmov s0,0x3f800000
02c4dffc  mov w1,#0xb
02c4e000  mov x2,xzr
02c4e004  mov x3,xzr
02c4e008  bl 0x02c1f10c
02c4e00c  mov x20,x19
02c4e010  ldr x1,[x20, #0xe0]!
02c4e014  cbz x1,0x02c4e024
02c4e018  mov x0,x19
02c4e01c  mov x2,xzr
02c4e020  bl 0x057e2250
02c4e024  mov x0,x19
02c4e028  bl 0x02c4e05c
02c4e02c  mov x1,x0
02c4e030  str x0,[x19, #0xe0]
02c4e034  mov x0,x20
02c4e038  bl 0x029f59f4
02c4e03c  ldr x1,[x19, #0xe0]
02c4e040  mov x0,x19
02c4e044  mov x2,xzr
02c4e048  ldp x20,x19,[sp, #0x20]
02c4e04c  ldp x22,x21,[sp, #0x10]
02c4e050  ldp x30,x23,[sp], #0x30
02c4e054  b 0x057e2120
02c4e058  bl 0x029f5cfc
