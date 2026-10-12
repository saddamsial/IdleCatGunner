02c561a8  stp x30,x21,[sp, #-0x20]!
02c561ac  stp x20,x19,[sp, #0x10]
02c561b0  adrp x21,0x625c000
02c561b4  adrp x20,0x5e5d000
02c561b8  mov x19,x0
02c561bc  ldrb w8,[x21, #0x1b9]
02c561c0  ldr x20,[x20, #0x338]
02c561c4  tbnz w8,#0x0,0x02c561f4
02c561c8  adrp x0,0x5e5d000
02c561cc  ldr x0,[x0, #0x338]
02c561d0  bl 0x029f5a50
02c561d4  adrp x0,0x5e59000
02c561d8  ldr x0,[x0, #0x1c0]
02c561dc  bl 0x029f5a50
02c561e0  adrp x0,0x5e5e000
02c561e4  ldr x0,[x0, #0x3e0]
02c561e8  bl 0x029f5a50
02c561ec  mov w8,#0x1
02c561f0  strb w8,[x21, #0x1b9]
02c561f4  ldr x0,[x20]
02c561f8  ldr w8,[x0, #0xe4]
02c561fc  cbnz w8,0x02c56208
02c56200  bl 0x029f5bd0
02c56204  ldr x0,[x20]
02c56208  ldr x8,[x0, #0xb8]
02c5620c  ldrb w8,[x8]
02c56210  cbz w8,0x02c562ac
02c56214  adrp x21,0x5e5e000
02c56218  adrp x20,0x5e59000
02c5621c  ldr x21,[x21, #0x3e0]
02c56220  ldr w8,[x19, #0xb0]
02c56224  ldr x0,[x21]
02c56228  add w8,w8,#0x1
02c5622c  ldr w9,[x0, #0xe4]
02c56230  ldr x20,[x20, #0x1c0]
02c56234  str w8,[x19, #0xb0]
02c56238  cbnz w9,0x02c56244
02c5623c  bl 0x029f5bd0
02c56240  ldr x0,[x21]
02c56244  ldr x8,[x20]
02c56248  ldr x9,[x0, #0xb8]
02c5624c  ldr w10,[x8, #0xe4]
02c56250  ldr x20,[x9]
02c56254  cbnz w10,0x02c56260
02c56258  mov x0,x8
02c5625c  bl 0x029f5bd0
02c56260  mov x0,x20
02c56264  mov x1,xzr
02c56268  mov x2,xzr
02c5626c  bl 0x057dfa70
02c56270  tbz w0,#0x0,0x02c5629c
02c56274  ldr x0,[x21]
02c56278  ldr w8,[x0, #0xe4]
02c5627c  cbnz w8,0x02c56288
02c56280  bl 0x029f5bd0
02c56284  ldr x0,[x21]
02c56288  ldr x8,[x0, #0xb8]
02c5628c  ldr x0,[x8]
02c56290  cbz x0,0x02c562b8
02c56294  mov x1,xzr
02c56298  bl 0x02ca1338
02c5629c  mov x0,x19
02c562a0  ldp x20,x19,[sp, #0x10]
02c562a4  ldp x30,x21,[sp], #0x20
02c562a8  b 0x02c59680
02c562ac  ldp x20,x19,[sp, #0x10]
02c562b0  ldp x30,x21,[sp], #0x20
02c562b4  ret
02c562b8  bl 0x029f5cfc
