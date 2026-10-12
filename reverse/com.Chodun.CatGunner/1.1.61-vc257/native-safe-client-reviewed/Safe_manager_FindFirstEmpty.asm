02c6bd74  str x30,[sp, #-0x10]!
02c6bd78  ldr w9,[x0, #0x28]
02c6bd7c  mov w8,#0x10
02c6bd80  add w10,w9,#0x6
02c6bd84  cmp w10,#0x10
02c6bd88  csel w9,w10,w8,lt
02c6bd8c  cmp w10,#0x1
02c6bd90  b.lt 0x02c6bdd0
02c6bd94  ldr x10,[x0, #0x20]
02c6bd98  cbz x10,0x02c6bde0
02c6bd9c  ldr x8,[x10, #0x18]
02c6bda0  cmp w9,#0x1
02c6bda4  mov x0,xzr
02c6bda8  csinc w9,w9,wzr,gt
02c6bdac  add x10,x10,#0x20
02c6bdb0  cmp w8,w0
02c6bdb4  b.eq 0x02c6bddc
02c6bdb8  ldr w11,[x10, x0, LSL #0x2]
02c6bdbc  cmn w11,#0x1
02c6bdc0  b.eq 0x02c6bdd4
02c6bdc4  add x0,x0,#0x1
02c6bdc8  cmp w9,w0
02c6bdcc  b.ne 0x02c6bdb0
02c6bdd0  mov w0,#0xffffffff
02c6bdd4  ldr x30,[sp], #0x10
02c6bdd8  ret
02c6bddc  bl 0x029f5d04
02c6bde0  bl 0x029f5cfc
