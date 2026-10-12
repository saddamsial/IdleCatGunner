02b82b18  stp x30,x21,[sp, #-0x20]!
02b82b1c  stp x20,x19,[sp, #0x10]
02b82b20  ldr x21,[x0, #0x40]
02b82b24  cbz x21,0x02b82b9c
02b82b28  mov x20,x1
02b82b2c  ldr x1,[x21, #0x18]
02b82b30  cbz x1,0x02b82b90
02b82b34  mov x19,x0
02b82b38  mov w0,wzr
02b82b3c  mov x2,xzr
02b82b40  bl 0x057d5614
02b82b44  ldr w8,[x21, #0x18]
02b82b48  cmp w0,w8
02b82b4c  b.cs 0x02b82ba0
02b82b50  add x8,x21,w0, SXTW  #0x3
02b82b54  ldr x21,[x8, #0x20]
02b82b58  cbz x21,0x02b82b9c
02b82b5c  ldrb w8,[x21, #0x30]
02b82b60  cbnz w8,0x02b82b6c
02b82b64  mov x0,x21
02b82b68  bl 0x02b82934
02b82b6c  cbz x20,0x02b82b9c
02b82b70  ldr w8,[x19, #0x24]
02b82b74  str x21,[x20, #0x68]!
02b82b78  mov x0,x20
02b82b7c  mov x1,x21
02b82b80  stur w8,[x20, #-0x10]
02b82b84  bl 0x029f59f4
02b82b88  ldr s0,[x19, #0x20]
02b82b8c  stur s0,[x20, #-0x8]
02b82b90  ldp x20,x19,[sp, #0x10]
02b82b94  ldp x30,x21,[sp], #0x20
02b82b98  ret
02b82b9c  bl 0x029f5cfc
02b82ba0  bl 0x029f5d04
