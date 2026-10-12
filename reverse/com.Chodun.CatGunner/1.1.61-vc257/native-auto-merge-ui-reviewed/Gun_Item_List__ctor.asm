02c77218  str x30,[sp, #-0x30]!
02c7721c  stp x22,x21,[sp, #0x10]
02c77220  stp x20,x19,[sp, #0x20]
02c77224  adrp x22,0x625c000
02c77228  adrp x21,0x5e63000
02c7722c  adrp x20,0x5e63000
02c77230  ldrb w8,[x22, #0x2f9]
02c77234  ldr x21,[x21, #0xc88]
02c77238  ldr x20,[x20, #0xc90]
02c7723c  mov x19,x0
02c77240  tbnz w8,#0x0,0x02c77264
02c77244  adrp x0,0x5e63000
02c77248  ldr x0,[x0, #0xc90]
02c7724c  bl 0x029f5a50
02c77250  adrp x0,0x5e63000
02c77254  ldr x0,[x0, #0xc88]
02c77258  bl 0x029f5a50
02c7725c  mov w8,#0x1
02c77260  strb w8,[x22, #0x2f9]
02c77264  adrp x8,0x116f000
02c77268  ldr x0,[x21]
02c7726c  ldr d0,[x8, #0xa88]
02c77270  mov w8,#0xc28f
02c77274  movk w8,#0x3df5, LSL #16
02c77278  str d0,[x19, #0x30]
02c7727c  str w8,[x19, #0x38]
02c77280  bl 0x029f5cec
02c77284  ldr x1,[x20]
02c77288  mov x20,x0
02c7728c  bl 0x0452c340
02c77290  mov x0,x19
02c77294  mov x1,x20
02c77298  str x20,[x0, #0x40]!
02c7729c  bl 0x029f59f4
02c772a0  mov x8,#-0x1
02c772a4  mov x0,x19
02c772a8  mov x1,xzr
02c772ac  stp x8,x8,[x19, #0x50]
02c772b0  ldp x20,x19,[sp, #0x20]
02c772b4  ldp x22,x21,[sp, #0x10]
02c772b8  ldr x30,[sp], #0x30
02c772bc  b 0x057e2ee0
