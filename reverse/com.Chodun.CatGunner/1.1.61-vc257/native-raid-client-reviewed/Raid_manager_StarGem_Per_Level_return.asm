02c56f80  str x30,[sp, #-0x20]!
02c56f84  stp x20,x19,[sp, #0x10]
02c56f88  adrp x20,0x625c000
02c56f8c  mov w19,w0
02c56f90  ldrb w8,[x20, #0x19c]
02c56f94  tbnz w8,#0x0,0x02c56fac
02c56f98  adrp x0,0x5e5e000
02c56f9c  ldr x0,[x0, #0x70]
02c56fa0  bl 0x029f5a50
02c56fa4  mov w8,#0x1
02c56fa8  strb w8,[x20, #0x19c]
02c56fac  subs w20,w19,#0x1
02c56fb0  b.lt 0x02c5702c
02c56fb4  adrp x19,0x5e5e000
02c56fb8  ldr x19,[x19, #0x70]
02c56fbc  ldr x0,[x19]
02c56fc0  ldr w8,[x0, #0xe4]
02c56fc4  cbnz w8,0x02c56fd0
02c56fc8  bl 0x029f5bd0
02c56fcc  ldr x0,[x19]
02c56fd0  ldr x8,[x0, #0xb8]
02c56fd4  ldr x8,[x8, #0x30]
02c56fd8  cbz x8,0x02c57044
02c56fdc  mov w9,#0xcccd
02c56fe0  movk w9,#0xcccc, LSL #16
02c56fe4  umull x9,w20,w9
02c56fe8  lsr x20,x9,#0x23
02c56fec  ldr w9,[x8, #0x18]
02c56ff0  cmp w20,w9
02c56ff4  b.ge 0x02c57034
02c56ff8  ldr w9,[x0, #0xe4]
02c56ffc  cbnz w9,0x02c57014
02c57000  bl 0x029f5bd0
02c57004  ldr x8,[x19]
02c57008  ldr x8,[x8, #0xb8]
02c5700c  ldr x8,[x8, #0x30]
02c57010  cbz x8,0x02c57044
02c57014  ldr w9,[x8, #0x18]
02c57018  cmp w20,w9
02c5701c  b.cs 0x02c57048
02c57020  add x8,x8,w20, UXTW  #0x2
02c57024  ldr w0,[x8, #0x20]
02c57028  b 0x02c57038
02c5702c  mov w0,wzr
02c57030  b 0x02c57038
02c57034  mov w0,#0x5
02c57038  ldp x20,x19,[sp, #0x10]
02c5703c  ldr x30,[sp], #0x20
02c57040  ret
02c57044  bl 0x029f5cfc
02c57048  bl 0x029f5d04
