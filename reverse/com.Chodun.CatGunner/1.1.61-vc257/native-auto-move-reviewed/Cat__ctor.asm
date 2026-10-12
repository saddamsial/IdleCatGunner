02c42f24  str x30,[sp, #-0x40]!
02c42f28  stp x24,x23,[sp, #0x10]
02c42f2c  stp x22,x21,[sp, #0x20]
02c42f30  stp x20,x19,[sp, #0x30]
02c42f34  adrp x21,0x625c000
02c42f38  mov x19,x0
02c42f3c  add x20,x0,#0x12c
02c42f40  ldrb w8,[x21, #0xbb]
02c42f44  tbnz w8,#0x0,0x02c42f68
02c42f48  adrp x0,0x5e63000
02c42f4c  ldr x0,[x0, #0x268]
02c42f50  bl 0x029f5a50
02c42f54  adrp x0,0x5e63000
02c42f58  ldr x0,[x0, #0x270]
02c42f5c  bl 0x029f5a50
02c42f60  mov w8,#0x1
02c42f64  strb w8,[x21, #0xbb]
02c42f68  adrp x8,0x1170000
02c42f6c  fmov v1.2S,#0x41400000
02c42f70  mov w9,#0x40a00000
02c42f74  ldr d0,[x8, #0x3b8]
02c42f78  adrp x8,0x116d000
02c42f7c  str w9,[x19, #0x20]
02c42f80  mov w9,#0x24
02c42f84  adrp x21,0x5e63000
02c42f88  adrp x24,0x625b000
02c42f8c  stur d0,[x19, #0xa4]
02c42f90  ldr q0,[x8, #0xc00]
02c42f94  adrp x8,0x116d000
02c42f98  str w9,[x19, #0x128]
02c42f9c  mov x9,#0x41c80000
02c42fa0  adrp x23,0x5e63000
02c42fa4  str q0,[x20]
02c42fa8  ldr q0,[x8, #0x4f0]
02c42fac  adrp x8,0x116d000
02c42fb0  str d1,[x19, #0x120]
02c42fb4  ldr q1,[x8, #0x140]
02c42fb8  add x8,x19,#0x194
02c42fbc  movk x9,#0x4040, LSL #48
02c42fc0  ldr x21,[x21, #0x270]
02c42fc4  mov w22,#0x41000000
02c42fc8  str x9,[x8]
02c42fcc  mov w8,#0x40
02c42fd0  mov w9,#0x41200000
02c42fd4  stp q0,q1,[x19, #0x150]
02c42fd8  str w8,[x19, #0x19c]
02c42fdc  adrp x8,0x1170000
02c42fe0  str w9,[x19, #0x1c0]
02c42fe4  ldr d0,[x8, #0xab8]
02c42fe8  ldrb w8,[x24, #0x26f]
02c42fec  ldr x23,[x23, #0x268]
02c42ff0  str w22,[x19, #0x170]
02c42ff4  str d0,[x19, #0x1b8]
02c42ff8  cbnz w8,0x02c43010
02c42ffc  adrp x0,0x5e58000
02c43000  ldr x0,[x0, #0xbf8]
02c43004  bl 0x029f5a50
02c43008  mov w8,#0x1
02c4300c  strb w8,[x24, #0x26f]
02c43010  adrp x8,0x5e58000
02c43014  adrp x10,0x116f000
02c43018  ldr x8,[x8, #0xbf8]
02c4301c  ldr x8,[x8]
02c43020  ldr x9,[x8, #0xb8]
02c43024  ldr d0,[x9]
02c43028  ldr s1,[x9, #0x8]
02c4302c  str d0,[x20, #0x98]
02c43030  str s1,[x19, #0x1cc]
02c43034  ldr x0,[x21]
02c43038  ldr x9,[x8, #0xb8]
02c4303c  ldr d0,[x9]
02c43040  ldr s1,[x9, #0x8]
02c43044  mov w9,#0x1
02c43048  strb w9,[x19, #0x1f8]
02c4304c  str d0,[x19, #0x1d0]
02c43050  ldr q0,[x10, #0x240]
02c43054  str s1,[x19, #0x1d8]
02c43058  ldr x8,[x8, #0xb8]
02c4305c  ldr d1,[x8]
02c43060  ldr s2,[x8, #0x8]
02c43064  stur q0,[x20, #0xec]
02c43068  str w22,[x19, #0x228]
02c4306c  str d1,[x20, #0xe0]
02c43070  str s2,[x19, #0x214]
02c43074  bl 0x029f5cec
02c43078  ldr x1,[x23]
02c4307c  mov x20,x0
02c43080  bl 0x037167c8
02c43084  add x0,x19,#0x240
02c43088  mov x1,x20
02c4308c  str x20,[x19, #0x240]
02c43090  bl 0x029f59f4
02c43094  adrp x8,0x1170000
02c43098  mov w9,#0xffffffff
02c4309c  mov x0,x19
02c430a0  ldr d0,[x8, #0x3c0]
02c430a4  str w9,[x19, #0x268]
02c430a8  mov x1,xzr
02c430ac  ldp x22,x21,[sp, #0x20]
02c430b0  str d0,[x19, #0x298]
02c430b4  ldp x20,x19,[sp, #0x30]
02c430b8  ldp x24,x23,[sp, #0x10]
02c430bc  ldr x30,[sp], #0x40
02c430c0  b 0x057e2ee0
