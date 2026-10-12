02c2fe14  sub sp,sp,#0x30
02c2fe18  stp x30,x21,[sp, #0x10]
02c2fe1c  stp x20,x19,[sp, #0x20]
02c2fe20  mov x19,x0
02c2fe24  str w3,[x0, #0x24]
02c2fe28  ldr x0,[x0, #0x30]
02c2fe2c  add x11,x19,#0x48
02c2fe30  add x10,x19,#0x4c
02c2fe34  add x9,x19,#0x50
02c2fe38  add x8,x19,#0x54
02c2fe3c  add x12,x19,#0x58
02c2fe40  add x13,x19,#0x64
02c2fe44  tst w1,#0x1
02c2fe48  add x14,x19,#0x5c
02c2fe4c  add x15,x19,#0x60
02c2fe50  csel x8,x8,x13,ne
02c2fe54  csel x9,x9,x15,ne
02c2fe58  csel x10,x10,x14,ne
02c2fe5c  csel x11,x11,x12,ne
02c2fe60  str wzr,[sp, #0xc]
02c2fe64  cbz x0,0x02c2ff24
02c2fe68  ldr x12,[x0]
02c2fe6c  mov w20,w1
02c2fe70  ldr s3,[x8]
02c2fe74  ldr s2,[x9]
02c2fe78  ldr s1,[x10]
02c2fe7c  mov x21,x2
02c2fe80  ldr s0,[x11]
02c2fe84  ldr x8,[x12, #0x2a8]
02c2fe88  ldr x1,[x12, #0x2b0]
02c2fe8c  blr x8
02c2fe90  ldr x0,[x19, #0x38]
02c2fe94  cbz x0,0x02c2ff24
02c2fe98  mov x1,x21
02c2fe9c  mov x2,xzr
02c2fea0  bl 0x058d34cc
02c2fea4  ldr w8,[x19, #0x24]
02c2fea8  ldr x21,[x19, #0x40]
02c2feac  add x0,sp,#0xc
02c2feb0  mov x1,xzr
02c2feb4  add w8,w8,w8, LSL #0x2
02c2feb8  lsl w8,w8,#0x2
02c2febc  str w8,[sp, #0xc]
02c2fec0  bl 0x0484e6a4
02c2fec4  cbz x21,0x02c2ff24
02c2fec8  ldr x8,[x21]
02c2fecc  mov x1,x0
02c2fed0  mov x0,x21
02c2fed4  ldr x9,[x8, #0x558]
02c2fed8  ldr x2,[x8, #0x560]
02c2fedc  blr x9
02c2fee0  fmov s3,0x3f800000
02c2fee4  fmov s2,0x3f800000
02c2fee8  ldr x0,[x19, #0x40]
02c2feec  fmov s1,0x3f800000
02c2fef0  fmov s0,0x3f800000
02c2fef4  tbnz w20,#0x0,0x02c2ff00
02c2fef8  ldp s0,s1,[x19, #0x68]
02c2fefc  ldp s2,s3,[x19, #0x70]
02c2ff00  cbz x0,0x02c2ff24
02c2ff04  ldr x8,[x0]
02c2ff08  ldr x9,[x8, #0x2a8]
02c2ff0c  ldr x1,[x8, #0x2b0]
02c2ff10  blr x9
02c2ff14  ldp x20,x19,[sp, #0x20]
02c2ff18  ldp x30,x21,[sp, #0x10]
02c2ff1c  add sp,sp,#0x30
02c2ff20  ret
02c2ff24  bl 0x029f5cfc
