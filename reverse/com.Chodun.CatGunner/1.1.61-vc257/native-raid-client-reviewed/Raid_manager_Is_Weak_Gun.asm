02c51cc8  str x30,[sp, #-0x20]!
02c51ccc  stp x20,x19,[sp, #0x10]
02c51cd0  adrp x20,0x625c000
02c51cd4  mov w19,w0
02c51cd8  ldrb w8,[x20, #0x1c0]
02c51cdc  tbnz w8,#0x0,0x02c51d00
02c51ce0  adrp x0,0x5e5d000
02c51ce4  ldr x0,[x0, #0xd40]
02c51ce8  bl 0x029f5a50
02c51cec  adrp x0,0x5e5e000
02c51cf0  ldr x0,[x0, #0x70]
02c51cf4  bl 0x029f5a50
02c51cf8  mov w8,#0x1
02c51cfc  strb w8,[x20, #0x1c0]
02c51d00  tbnz w19,#0x1f,0x02c51d68
02c51d04  adrp x8,0x5e5d000
02c51d08  ldr x8,[x8, #0xd40]
02c51d0c  ldr x8,[x8]
02c51d10  ldr x8,[x8, #0xb8]
02c51d14  ldr x8,[x8]
02c51d18  cbz x8,0x02c51d78
02c51d1c  ldr x8,[x8, #0x20]
02c51d20  cbz x8,0x02c51d78
02c51d24  ldr w9,[x8, #0x18]
02c51d28  cmp w9,w19
02c51d2c  b.ls 0x02c51d7c
02c51d30  add x8,x8,w19, UXTW  #0x3
02c51d34  ldr x8,[x8, #0x20]
02c51d38  cbz x8,0x02c51d78
02c51d3c  adrp x9,0x5e5e000
02c51d40  ldr x9,[x9, #0x70]
02c51d44  ldr w19,[x8, #0x18]
02c51d48  ldr x0,[x9]
02c51d4c  ldr w9,[x0, #0xe4]
02c51d50  cbnz w9,0x02c51d58
02c51d54  bl 0x029f5bd0
02c51d58  bl 0x02c59868
02c51d5c  cmp w19,w0
02c51d60  cset w0,eq
02c51d64  b 0x02c51d6c
02c51d68  mov w0,wzr
02c51d6c  ldp x20,x19,[sp, #0x10]
02c51d70  ldr x30,[sp], #0x20
02c51d74  ret
02c51d78  bl 0x029f5cfc
02c51d7c  bl 0x029f5d04
