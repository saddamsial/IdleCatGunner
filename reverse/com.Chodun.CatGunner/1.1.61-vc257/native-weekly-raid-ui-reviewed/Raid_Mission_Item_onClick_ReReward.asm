02c53500  str x30,[sp, #-0x30]!
02c53504  stp x22,x21,[sp, #0x10]
02c53508  stp x20,x19,[sp, #0x20]
02c5350c  adrp x22,0x625c000
02c53510  adrp x21,0x5e5e000
02c53514  adrp x20,0x5e59000
02c53518  ldrb w8,[x22, #0x16b]
02c5351c  ldr x21,[x21, #0x68]
02c53520  ldr x20,[x20, #0x1c0]
02c53524  mov x19,x0
02c53528  tbnz w8,#0x0,0x02c5354c
02c5352c  adrp x0,0x5e59000
02c53530  ldr x0,[x0, #0x1c0]
02c53534  bl 0x029f5a50
02c53538  adrp x0,0x5e5e000
02c5353c  ldr x0,[x0, #0x68]
02c53540  bl 0x029f5a50
02c53544  mov w8,#0x1
02c53548  strb w8,[x22, #0x16b]
02c5354c  ldr x8,[x21]
02c53550  ldr x0,[x20]
02c53554  ldr x8,[x8, #0xb8]
02c53558  ldr w9,[x0, #0xe4]
02c5355c  ldr x20,[x8]
02c53560  cbnz w9,0x02c53568
02c53564  bl 0x029f5bd0
02c53568  mov x0,x20
02c5356c  mov x1,xzr
02c53570  mov x2,xzr
02c53574  bl 0x057e14b4
02c53578  tbz w0,#0x0,0x02c5358c
02c5357c  ldp x20,x19,[sp, #0x20]
02c53580  ldp x22,x21,[sp, #0x10]
02c53584  ldr x30,[sp], #0x30
02c53588  ret
02c5358c  ldr x8,[x21]
02c53590  ldr x8,[x8, #0xb8]
02c53594  ldr x0,[x8]
02c53598  cbz x0,0x02c535b0
02c5359c  ldr w1,[x19, #0x60]
02c535a0  ldp x20,x19,[sp, #0x20]
02c535a4  ldp x22,x21,[sp, #0x10]
02c535a8  ldr x30,[sp], #0x30
02c535ac  b 0x02c535b4
02c535b0  bl 0x029f5cfc
