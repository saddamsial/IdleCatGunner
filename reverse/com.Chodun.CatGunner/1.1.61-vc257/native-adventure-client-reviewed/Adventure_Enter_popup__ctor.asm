02c34234  str x30,[sp, #-0x30]!
02c34238  stp x22,x21,[sp, #0x10]
02c3423c  stp x20,x19,[sp, #0x20]
02c34240  adrp x21,0x625c000
02c34244  adrp x22,0x5e62000
02c34248  adrp x20,0x5e62000
02c3424c  ldrb w8,[x21, #0x52]
02c34250  ldr x22,[x22, #0xfd8]
02c34254  ldr x20,[x20, #0xfc8]
02c34258  mov x19,x0
02c3425c  tbnz w8,#0x0,0x02c34280
02c34260  adrp x0,0x5e62000
02c34264  ldr x0,[x0, #0xfc8]
02c34268  bl 0x029f5a50
02c3426c  adrp x0,0x5e62000
02c34270  ldr x0,[x0, #0xfd8]
02c34274  bl 0x029f5a50
02c34278  mov w8,#0x1
02c3427c  strb w8,[x21, #0x52]
02c34280  ldr x0,[x22]
02c34284  bl 0x029f5cec
02c34288  ldr x1,[x20]
02c3428c  mov x20,x0
02c34290  bl 0x045c0d0c
02c34294  mov x0,x19
02c34298  mov x1,x20
02c3429c  str x20,[x0, #0xc8]!
02c342a0  bl 0x029f59f4
02c342a4  mov x0,x19
02c342a8  ldp x20,x19,[sp, #0x20]
02c342ac  ldp x22,x21,[sp, #0x10]
02c342b0  mov x1,xzr
02c342b4  ldr x30,[sp], #0x30
02c342b8  b 0x057e2ee0
