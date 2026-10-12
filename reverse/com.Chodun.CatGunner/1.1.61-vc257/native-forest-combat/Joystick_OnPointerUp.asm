02b87bc0  str x30,[sp, #-0x20]!
02b87bc4  stp x20,x19,[sp, #0x10]
02b87bc8  adrp x20,0x625b000
02b87bcc  mov x19,x0
02b87bd0  ldrb w8,[x20, #0x271]
02b87bd4  cbnz w8,0x02b87bec
02b87bd8  adrp x0,0x5e59000
02b87bdc  ldr x0,[x0, #0x608]
02b87be0  bl 0x029f5a50
02b87be4  mov w8,#0x1
02b87be8  strb w8,[x20, #0x271]
02b87bec  adrp x8,0x5e59000
02b87bf0  ldr x8,[x8, #0x608]
02b87bf4  ldr x0,[x19, #0x38]
02b87bf8  ldr x8,[x8]
02b87bfc  ldr x9,[x8, #0xb8]
02b87c00  ldr d0,[x9]
02b87c04  str d0,[x19, #0x58]
02b87c08  cbz x0,0x02b87c24
02b87c0c  ldr x8,[x8, #0xb8]
02b87c10  ldp x20,x19,[sp, #0x10]
02b87c14  mov x1,xzr
02b87c18  ldp s0,s1,[x8]
02b87c1c  ldr x30,[sp], #0x20
02b87c20  b 0x057edec8
02b87c24  bl 0x029f5cfc
