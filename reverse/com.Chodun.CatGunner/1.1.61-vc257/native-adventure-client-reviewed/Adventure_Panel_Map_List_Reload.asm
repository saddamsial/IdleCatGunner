02c356d8  str x30,[sp, #-0x20]!
02c356dc  stp x20,x19,[sp, #0x10]
02c356e0  ldr x8,[x0, #0x50]
02c356e4  cbz x8,0x02c35720
02c356e8  mov x19,x0
02c356ec  mov x20,xzr
02c356f0  ldr w9,[x8, #0x18]
02c356f4  cmp w20,w9
02c356f8  b.ge 0x02c35724
02c356fc  cmp w20,w9
02c35700  b.cs 0x02c35730
02c35704  add x8,x8,x20, LSL #0x3
02c35708  ldr x0,[x8, #0x20]
02c3570c  cbz x0,0x02c35720
02c35710  bl 0x02c35290
02c35714  ldr x8,[x19, #0x50]
02c35718  add x20,x20,#0x1
02c3571c  cbnz x8,0x02c356f0
02c35720  bl 0x029f5cfc
02c35724  ldp x20,x19,[sp, #0x10]
02c35728  ldr x30,[sp], #0x20
02c3572c  ret
02c35730  bl 0x029f5d04
