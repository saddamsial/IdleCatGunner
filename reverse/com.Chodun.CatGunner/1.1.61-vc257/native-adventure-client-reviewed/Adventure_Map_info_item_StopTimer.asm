02c34b50  str x30,[sp, #-0x20]!
02c34b54  stp x20,x19,[sp, #0x10]
02c34b58  mov x20,x0
02c34b5c  ldr x1,[x20, #0x98]!
02c34b60  cbz x1,0x02c34b88
02c34b64  mov x2,xzr
02c34b68  mov x19,x0
02c34b6c  bl 0x057e237c
02c34b70  mov x0,x20
02c34b74  str xzr,[x19, #0x98]
02c34b78  mov x1,xzr
02c34b7c  ldp x20,x19,[sp, #0x10]
02c34b80  ldr x30,[sp], #0x20
02c34b84  b 0x029f59f4
02c34b88  ldp x20,x19,[sp, #0x10]
02c34b8c  ldr x30,[sp], #0x20
02c34b90  ret
