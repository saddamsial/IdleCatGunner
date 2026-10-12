02c499fc  stp x30,x21,[sp, #-0x20]!
02c49a00  stp x20,x19,[sp, #0x10]
02c49a04  adrp x20,0x625c000
02c49a08  adrp x21,0x5e5e000
02c49a0c  mov x19,x0
02c49a10  ldrb w8,[x20, #0x10c]
02c49a14  ldr x21,[x21, #0xb8]
02c49a18  tbnz w8,#0x0,0x02c49a30
02c49a1c  adrp x0,0x5e5e000
02c49a20  ldr x0,[x0, #0xb8]
02c49a24  bl 0x029f5a50
02c49a28  mov w8,#0x1
02c49a2c  strb w8,[x20, #0x10c]
02c49a30  ldr x0,[x21]
02c49a34  ldr w8,[x0, #0xe4]
02c49a38  cbnz w8,0x02c49a40
02c49a3c  bl 0x029f5bd0
02c49a40  mov w0,wzr
02c49a44  mov x1,xzr
02c49a48  bl 0x02c9077c
02c49a4c  adrp x8,0x116c000
02c49a50  ldr s0,[x19, #0x78]
02c49a54  tst w0,#0x1
02c49a58  ldr s1,[x8, #0x1b4]
02c49a5c  ldp x20,x19,[sp, #0x10]
02c49a60  fmul s1,s0,s1
02c49a64  fcsel s0,s1,s0,ne
02c49a68  ldp x30,x21,[sp], #0x20
02c49a6c  ret
