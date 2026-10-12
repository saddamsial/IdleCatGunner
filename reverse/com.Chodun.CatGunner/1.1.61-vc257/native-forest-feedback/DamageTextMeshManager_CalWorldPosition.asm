02b83f28  str d10,[sp, #-0x40]!
02b83f2c  stp d9,d8,[sp, #0x8]
02b83f30  str x30,[sp, #0x18]
02b83f34  stp x22,x21,[sp, #0x20]
02b83f38  stp x20,x19,[sp, #0x30]
02b83f3c  cbz x2,0x02b8401c
02b83f40  ldrb w8,[x2, #0x28]
02b83f44  mov x21,x2
02b83f48  mov x19,x1
02b83f4c  mov x20,x0
02b83f50  cbz w8,0x02b83fb0
02b83f54  mov x0,xzr
02b83f58  bl 0x057a2940
02b83f5c  ldr s8,[x21, #0x2c]
02b83f60  mov w22,w0
02b83f64  mov x0,xzr
02b83f68  bl 0x057a2968
02b83f6c  ldr s9,[x21, #0x30]
02b83f70  mov w21,w0
02b83f74  mov x0,x20
02b83f78  bl 0x02b85738
02b83f7c  cbz x0,0x02b8401c
02b83f80  scvtf s0,w21
02b83f84  scvtf s2,w22
02b83f88  mov x1,xzr
02b83f8c  fmul s1,s9,s0
02b83f90  fmul s0,s8,s2
02b83f94  movi d2,#0x0
02b83f98  bl 0x05797864
02b83f9c  cbz x19,0x02b8401c
02b83fa0  mov w8,#0x42c80000
02b83fa4  fmov s3,w8
02b83fa8  fadd s2,s2,s3
02b83fac  b 0x02b83ffc
02b83fb0  mov x0,x20
02b83fb4  bl 0x02b85690
02b83fb8  cbz x19,0x02b8401c
02b83fbc  cbz x0,0x02b8401c
02b83fc0  ldp s1,s2,[x19, #0x14]
02b83fc4  mov x1,xzr
02b83fc8  ldr s0,[x19, #0x10]
02b83fcc  bl 0x05797854
02b83fd0  mov x0,x20
02b83fd4  fmov s8,s0
02b83fd8  fmov s9,s1
02b83fdc  fmov s10,s2
02b83fe0  bl 0x02b85738
02b83fe4  cbz x0,0x02b8401c
02b83fe8  fmov s0,s8
02b83fec  fmov s1,s9
02b83ff0  mov x1,xzr
02b83ff4  fmov s2,s10
02b83ff8  bl 0x0579785c
02b83ffc  stp s0,s1,[x19, #0x2c]
02b84000  ldp x22,x21,[sp, #0x20]
02b84004  str s2,[x19, #0x34]
02b84008  ldr x30,[sp, #0x18]
02b8400c  ldp x20,x19,[sp, #0x30]
02b84010  ldp d9,d8,[sp, #0x8]
02b84014  ldr d10,[sp], #0x40
02b84018  ret
02b8401c  bl 0x029f5cfc
