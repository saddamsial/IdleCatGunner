02cb2ae0  stp x30,x21,[sp, #-0x20]!
02cb2ae4  stp x20,x19,[sp, #0x10]
02cb2ae8  ldr x8,[x0, #0x20]
02cb2aec  cbz x8,0x02cb2b34
02cb2af0  mov x19,x0
02cb2af4  mov x20,xzr
02cb2af8  ldr w9,[x8, #0x18]
02cb2afc  cmp w20,w9
02cb2b00  b.ge 0x02cb2b38
02cb2b04  cmp w20,w9
02cb2b08  b.cs 0x02cb2b4c
02cb2b0c  add x8,x8,x20, LSL #0x3
02cb2b10  mov w0,wzr
02cb2b14  mov x1,xzr
02cb2b18  ldr x21,[x8, #0x20]
02cb2b1c  bl 0x02b1e5c8
02cb2b20  cbz x21,0x02cb2b34
02cb2b24  stp x0,x1,[x21, #0x18]
02cb2b28  add x20,x20,#0x1
02cb2b2c  ldr x8,[x19, #0x20]
02cb2b30  cbnz x8,0x02cb2af8
02cb2b34  bl 0x029f5cfc
02cb2b38  ldr x0,[x19, #0x58]
02cb2b3c  cbz x0,0x02cb2b34
02cb2b40  ldp x20,x19,[sp, #0x10]
02cb2b44  ldp x30,x21,[sp], #0x20
02cb2b48  b 0x02cb2310
02cb2b4c  bl 0x029f5d04
