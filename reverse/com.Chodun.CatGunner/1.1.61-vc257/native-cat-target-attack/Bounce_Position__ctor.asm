02b9c2e8  str x30,[sp, #-0x20]!
02b9c2ec  stp x20,x19,[sp, #0x10]
02b9c2f0  adrp x8,0x116e000
02b9c2f4  adrp x20,0x625b000
02b9c2f8  mov x19,x0
02b9c2fc  ldr q0,[x8, #0xce0]
02b9c300  ldrb w8,[x20, #0x26f]
02b9c304  stur q0,[x0, #0x24]
02b9c308  cbnz w8,0x02b9c320
02b9c30c  adrp x0,0x5e58000
02b9c310  ldr x0,[x0, #0xbf8]
02b9c314  bl 0x029f5a50
02b9c318  mov w8,#0x1
02b9c31c  strb w8,[x20, #0x26f]
02b9c320  adrp x8,0x5e58000
02b9c324  mov x0,x19
02b9c328  mov x1,xzr
02b9c32c  ldr x8,[x8, #0xbf8]
02b9c330  ldr x8,[x8]
02b9c334  ldr x8,[x8, #0xb8]
02b9c338  ldr d0,[x8]
02b9c33c  ldr s1,[x8, #0x8]
02b9c340  stur d0,[x19, #0x3c]
02b9c344  str s1,[x19, #0x44]
02b9c348  ldp x20,x19,[sp, #0x10]
02b9c34c  ldr x30,[sp], #0x20
02b9c350  b 0x057e2ee0
