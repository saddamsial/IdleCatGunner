02c35000  stp x30,x21,[sp, #-0x20]!
02c35004  stp x20,x19,[sp, #0x10]
02c35008  adrp x21,0x625c000
02c3500c  adrp x20,0x5e5d000
02c35010  mov x19,x0
02c35014  ldrb w8,[x21, #0x5c]
02c35018  ldr x20,[x20, #0xd28]
02c3501c  tbnz w8,#0x0,0x02c35034
02c35020  adrp x0,0x5e5d000
02c35024  ldr x0,[x0, #0xd28]
02c35028  bl 0x029f5a50
02c3502c  mov w8,#0x1
02c35030  strb w8,[x21, #0x5c]
02c35034  ldr x0,[x20]
02c35038  ldr w8,[x0, #0xe4]
02c3503c  cbnz w8,0x02c35048
02c35040  bl 0x029f5bd0
02c35044  ldr x0,[x20]
02c35048  ldr x8,[x0, #0xb8]
02c3504c  ldr x0,[x8, #0x10]
02c35050  cbz x0,0x02c35068
02c35054  ldp w1,w2,[x19, #0x90]
02c35058  ldp x20,x19,[sp, #0x10]
02c3505c  mov x3,xzr
02c35060  ldp x30,x21,[sp], #0x20
02c35064  b 0x02c2dc3c
02c35068  bl 0x029f5cfc
