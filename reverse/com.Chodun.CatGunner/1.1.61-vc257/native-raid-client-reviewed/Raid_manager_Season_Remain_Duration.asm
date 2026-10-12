02c5477c  str x30,[sp, #-0x20]!
02c54780  stp x20,x19,[sp, #0x10]
02c54784  adrp x19,0x625c000
02c54788  adrp x20,0x5e62000
02c5478c  ldrb w8,[x19, #0x1bc]
02c54790  ldr x20,[x20, #0x660]
02c54794  tbnz w8,#0x0,0x02c547ac
02c54798  adrp x0,0x5e62000
02c5479c  ldr x0,[x0, #0x660]
02c547a0  bl 0x029f5a50
02c547a4  mov w8,#0x1
02c547a8  strb w8,[x19, #0x1bc]
02c547ac  ldr x0,[x20]
02c547b0  ldr w8,[x0, #0xe4]
02c547b4  cbnz w8,0x02c547bc
02c547b8  bl 0x029f5bd0
02c547bc  ldp x20,x19,[sp, #0x10]
02c547c0  mov x0,xzr
02c547c4  ldr x30,[sp], #0x20
02c547c8  b 0x02c8ac2c
