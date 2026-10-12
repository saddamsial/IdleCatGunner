02c0a054  str x30,[sp, #-0x20]!
02c0a058  stp x20,x19,[sp, #0x10]
02c0a05c  mov w19,w1
02c0a060  cbz x0,0x02c0a08c
02c0a064  ldr x1,[x0, #0x28]
02c0a068  ldr x9,[x0, #0x18]
02c0a06c  ldr x8,[x0, #0x40]
02c0a070  mov x0,x8
02c0a074  blr x9
02c0a078  mov w19,w0
02c0a07c  mov w0,w19
02c0a080  ldp x20,x19,[sp, #0x10]
02c0a084  ldr x30,[sp], #0x20
02c0a088  ret
02c0a08c  bl 0x029f5cfc
