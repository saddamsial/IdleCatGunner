02c599dc  str x30,[sp, #-0x20]!
02c599e0  stp x20,x19,[sp, #0x10]
02c599e4  adrp x20,0x625c000
02c599e8  mov x19,x0
02c599ec  ldrb w8,[x20, #0x1c4]
02c599f0  tbnz w8,#0x0,0x02c59a08
02c599f4  adrp x0,0x5e5d000
02c599f8  ldr x0,[x0, #0x790]
02c599fc  bl 0x029f5a50
02c59a00  mov w8,#0x1
02c59a04  strb w8,[x20, #0x1c4]
02c59a08  mov x0,x19
02c59a0c  bl 0x02c59418
02c59a10  ldr x0,[x19, #0xf8]
02c59a14  cbz x0,0x02c59a4c
02c59a18  mov x1,xzr
02c59a1c  bl 0x04874260
02c59a20  cbz x0,0x02c59a40
02c59a24  adrp x8,0x5e5d000
02c59a28  mov x19,x0
02c59a2c  ldr x8,[x8, #0x790]
02c59a30  ldr x20,[x8]
02c59a34  mov x1,x20
02c59a38  bl 0x029f5bd4
02c59a3c  cbz x0,0x02c59a50
02c59a40  ldp x20,x19,[sp, #0x10]
02c59a44  ldr x30,[sp], #0x20
02c59a48  ret
02c59a4c  bl 0x029f5cfc
02c59a50  mov x0,x19
02c59a54  mov x1,x20
02c59a58  bl 0x029f607c
