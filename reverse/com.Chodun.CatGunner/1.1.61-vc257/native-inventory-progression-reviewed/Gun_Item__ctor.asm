02c74cb4  str x30,[sp, #-0x20]!
02c74cb8  stp x20,x19,[sp, #0x10]
02c74cbc  movi v0.2D,#-0x1
02c74cc0  adrp x8,0x116d000
02c74cc4  adrp x20,0x625b000
02c74cc8  ldr q1,[x8, #0xa80]
02c74ccc  ldrb w8,[x20, #0x279]
02c74cd0  mov x19,x0
02c74cd4  mov w9,#0xffffffff
02c74cd8  stur q1,[x0, #0x7c]
02c74cdc  stur d0,[x0, #0x8c]
02c74ce0  str w9,[x0, #0xd8]
02c74ce4  cbnz w8,0x02c74cfc
02c74ce8  adrp x0,0x5e58000
02c74cec  ldr x0,[x0, #0xbf8]
02c74cf0  bl 0x029f5a50
02c74cf4  mov w8,#0x1
02c74cf8  strb w8,[x20, #0x279]
02c74cfc  adrp x8,0x5e58000
02c74d00  mov x0,x19
02c74d04  mov x1,xzr
02c74d08  ldr x8,[x8, #0xbf8]
02c74d0c  ldr x8,[x8]
02c74d10  ldr x8,[x8, #0xb8]
02c74d14  ldur d0,[x8, #0xc]
02c74d18  ldr s1,[x8, #0x14]
02c74d1c  str d0,[x19, #0xf8]
02c74d20  str s1,[x19, #0x100]
02c74d24  ldp x20,x19,[sp, #0x10]
02c74d28  ldr x30,[sp], #0x20
02c74d2c  b 0x057e2ee0
