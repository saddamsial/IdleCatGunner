0465bddc  sub sp,sp,#0x30
0465bde0  stp x30,x21,[sp, #0x10]
0465bde4  stp x20,x19,[sp, #0x20]
0465bde8  adrp x21,0x6260000
0465bdec  adrp x20,0x5e58000
0465bdf0  mov x19,x0
0465bdf4  ldrb w8,[x21, #0xa2e]
0465bdf8  ldr x20,[x20, #0xfe0]
0465bdfc  tbnz w8,#0x0,0x0465be14
0465be00  adrp x0,0x5e58000
0465be04  ldr x0,[x0, #0xfe0]
0465be08  bl 0x029f5a50
0465be0c  mov w8,#0x1
0465be10  strb w8,[x21, #0xa2e]
0465be14  ldr x0,[x20]
0465be18  ldr q0,[x19, #0x10]
0465be1c  stp xzr,xzr,[sp]
0465be20  ldr w8,[x0, #0xe4]
0465be24  str q0,[sp]
0465be28  cbnz w8,0x0465be30
0465be2c  bl 0x029f5bd0
0465be30  mov x0,sp
0465be34  mov x1,xzr
0465be38  bl 0x04d90720
0465be3c  cbz x0,0x0465be90
0465be40  ldr w8,[x0, #0x10]
0465be44  ldr w9,[x19, #0x8]
0465be48  add w1,w9,w8
0465be4c  cmp w1,#0x4
0465be50  b.lt 0x0465be74
0465be54  mov w9,#0xaaab
0465be58  sub w8,w1,#0x1
0465be5c  movk w9,#0xaaaa, LSL #16
0465be60  umull x9,w8,w9
0465be64  lsr x9,x9,#0x21
0465be68  add w9,w9,w9, LSL #0x1
0465be6c  sub w8,w8,w9
0465be70  add w1,w8,#0x3
0465be74  mov x0,x19
0465be78  mov x2,xzr
0465be7c  bl 0x0465b03c
0465be80  ldp x20,x19,[sp, #0x20]
0465be84  ldp x30,x21,[sp, #0x10]
0465be88  add sp,sp,#0x30
0465be8c  ret
0465be90  bl 0x029f5cfc
