02ca7b10  str x30,[sp, #-0x20]!
02ca7b14  stp x20,x19,[sp, #0x10]
02ca7b18  ldr x8,[x0, #0x60]
02ca7b1c  cbz x8,0x02ca7b58
02ca7b20  mov x19,x0
02ca7b24  mov x20,xzr
02ca7b28  ldr w9,[x8, #0x18]
02ca7b2c  cmp w20,w9
02ca7b30  b.ge 0x02ca7b5c
02ca7b34  cmp w20,w9
02ca7b38  b.cs 0x02ca7b78
02ca7b3c  add x8,x8,x20, LSL #0x3
02ca7b40  ldr x0,[x8, #0x20]
02ca7b44  cbz x0,0x02ca7b58
02ca7b48  bl 0x02ca7eac
02ca7b4c  ldr x8,[x19, #0x60]
02ca7b50  add x20,x20,#0x1
02ca7b54  cbnz x8,0x02ca7b28
02ca7b58  bl 0x029f5cfc
02ca7b5c  ldr x0,[x19, #0x68]
02ca7b60  cbz x0,0x02ca7b58
02ca7b64  ldp x20,x19,[sp, #0x10]
02ca7b68  mov w1,#0x1
02ca7b6c  mov x2,xzr
02ca7b70  ldr x30,[sp], #0x20
02ca7b74  b 0x057dff3c
02ca7b78  bl 0x029f5d04
