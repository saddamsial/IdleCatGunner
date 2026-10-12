02c57fb0  stp x30,x21,[sp, #-0x20]!
02c57fb4  stp x20,x19,[sp, #0x10]
02c57fb8  adrp x20,0x625c000
02c57fbc  adrp x19,0x5e5e000
02c57fc0  ldrb w8,[x20, #0x1a9]
02c57fc4  ldr x19,[x19, #0x70]
02c57fc8  tbnz w8,#0x0,0x02c57ff8
02c57fcc  adrp x0,0x5e59000
02c57fd0  ldr x0,[x0, #0x1c0]
02c57fd4  bl 0x029f5a50
02c57fd8  adrp x0,0x5e5e000
02c57fdc  ldr x0,[x0, #0x70]
02c57fe0  bl 0x029f5a50
02c57fe4  adrp x0,0x5e62000
02c57fe8  ldr x0,[x0, #0x648]
02c57fec  bl 0x029f5a50
02c57ff0  mov w8,#0x1
02c57ff4  strb w8,[x20, #0x1a9]
02c57ff8  ldr x0,[x19]
02c57ffc  adrp x21,0x5e62000
02c58000  adrp x19,0x5e59000
02c58004  ldr x21,[x21, #0x648]
02c58008  ldr w8,[x0, #0xe4]
02c5800c  ldr x19,[x19, #0x1c0]
02c58010  cbnz w8,0x02c58018
02c58014  bl 0x029f5bd0
02c58018  bl 0x02c57f04
02c5801c  ldr x9,[x21]
02c58020  ldr x8,[x19]
02c58024  mov w19,w0
02c58028  ldr x9,[x9, #0xb8]
02c5802c  ldr w10,[x8, #0xe4]
02c58030  ldr x20,[x9]
02c58034  cbnz w10,0x02c58040
02c58038  mov x0,x8
02c5803c  bl 0x029f5bd0
02c58040  mov x0,x20
02c58044  mov x1,xzr
02c58048  mov x2,xzr
02c5804c  bl 0x057dfa70
02c58050  tbz w0,#0x0,0x02c58074
02c58054  ldr x8,[x21]
02c58058  ldr x8,[x8, #0xb8]
02c5805c  ldr x8,[x8]
02c58060  cbz x8,0x02c58088
02c58064  ldr x8,[x8, #0x20]
02c58068  cbz x8,0x02c58088
02c5806c  ldr w8,[x8, #0x18]
02c58070  b 0x02c58078
02c58074  mov w8,wzr
02c58078  add w0,w8,w19
02c5807c  ldp x20,x19,[sp, #0x10]
02c58080  ldp x30,x21,[sp], #0x20
02c58084  ret
02c58088  bl 0x029f5cfc
