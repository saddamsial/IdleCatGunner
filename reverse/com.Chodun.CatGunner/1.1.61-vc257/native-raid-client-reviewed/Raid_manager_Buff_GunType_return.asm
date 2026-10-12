02c5971c  str x30,[sp, #-0x30]!
02c59720  stp x22,x21,[sp, #0x10]
02c59724  stp x20,x19,[sp, #0x20]
02c59728  adrp x22,0x625c000
02c5972c  adrp x20,0x5e5d000
02c59730  adrp x21,0x5e59000
02c59734  ldrb w8,[x22, #0x1bd]
02c59738  ldr x20,[x20, #0xd40]
02c5973c  ldr x21,[x21, #0x1c0]
02c59740  mov w19,w0
02c59744  tbnz w8,#0x0,0x02c59774
02c59748  adrp x0,0x5e62000
02c5974c  ldr x0,[x0, #0x660]
02c59750  bl 0x029f5a50
02c59754  adrp x0,0x5e5d000
02c59758  ldr x0,[x0, #0xd40]
02c5975c  bl 0x029f5a50
02c59760  adrp x0,0x5e59000
02c59764  ldr x0,[x0, #0x1c0]
02c59768  bl 0x029f5a50
02c5976c  mov w8,#0x1
02c59770  strb w8,[x22, #0x1bd]
02c59774  mov w8,#0x6667
02c59778  ldr x0,[x21]
02c5977c  movk w8,#0x6666, LSL #16
02c59780  smull x8,w19,w8
02c59784  ldr w10,[x0, #0xe4]
02c59788  lsr x9,x8,#0x3f
02c5978c  asr x8,x8,#0x21
02c59790  add w8,w8,w9
02c59794  ldr x9,[x20]
02c59798  add w8,w8,w8, LSL #0x2
02c5979c  ldr x9,[x9, #0xb8]
02c597a0  sub w8,w19,w8
02c597a4  add w11,w8,#0x5
02c597a8  cmn w8,#0x6
02c597ac  ldr x19,[x9]
02c597b0  csel w21,w11,w8,hi
02c597b4  cbnz w10,0x02c597bc
02c597b8  bl 0x029f5bd0
02c597bc  mov x0,x19
02c597c0  mov x1,xzr
02c597c4  mov x2,xzr
02c597c8  bl 0x057dfa70
02c597cc  mov x19,xzr
02c597d0  tbz w0,#0x0,0x02c597e8
02c597d4  ldr x8,[x20]
02c597d8  ldr x8,[x8, #0xb8]
02c597dc  ldr x8,[x8]
02c597e0  cbz x8,0x02c59860
02c597e4  ldr x19,[x8, #0x20]
02c597e8  adrp x20,0x5e62000
02c597ec  ldr x20,[x20, #0x660]
02c597f0  ldr x0,[x20]
02c597f4  ldr w8,[x0, #0xe4]
02c597f8  cbnz w8,0x02c59804
02c597fc  bl 0x029f5bd0
02c59800  ldr x0,[x20]
02c59804  ldr x8,[x0, #0xb8]
02c59808  ldr x8,[x8, #0x18]
02c5980c  cbz x8,0x02c59860
02c59810  ldr w9,[x8, #0x18]
02c59814  tst w9,#0xfffffffe
02c59818  b.eq 0x02c59864
02c5981c  cbz x19,0x02c5984c
02c59820  ldr w8,[x8, #0x24]
02c59824  ldr w9,[x19, #0x18]
02c59828  add w8,w8,w21
02c5982c  cmp w8,w9
02c59830  b.ge 0x02c5984c
02c59834  b.cs 0x02c59864
02c59838  add x8,x19,w8, SXTW  #0x3
02c5983c  ldr x8,[x8, #0x20]
02c59840  cbz x8,0x02c59860
02c59844  ldr w0,[x8, #0x18]
02c59848  b 0x02c59850
02c5984c  mov w0,#0x2
02c59850  ldp x20,x19,[sp, #0x20]
02c59854  ldp x22,x21,[sp, #0x10]
02c59858  ldr x30,[sp], #0x30
02c5985c  ret
02c59860  bl 0x029f5cfc
02c59864  bl 0x029f5d04
