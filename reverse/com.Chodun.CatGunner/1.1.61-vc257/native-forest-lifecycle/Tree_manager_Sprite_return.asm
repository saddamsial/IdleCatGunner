02cab8f8  str x30,[sp, #-0x30]!
02cab8fc  stp x22,x21,[sp, #0x10]
02cab900  stp x20,x19,[sp, #0x20]
02cab904  adrp x22,0x625c000
02cab908  adrp x21,0x5e5d000
02cab90c  mov w19,w1
02cab910  ldrb w8,[x22, #0x527]
02cab914  ldr x21,[x21, #0xc20]
02cab918  mov w20,w0
02cab91c  tbnz w8,#0x0,0x02cab934
02cab920  adrp x0,0x5e5d000
02cab924  ldr x0,[x0, #0xc20]
02cab928  bl 0x029f5a50
02cab92c  mov w8,#0x1
02cab930  strb w8,[x22, #0x527]
02cab934  ldr x0,[x21]
02cab938  ldr w8,[x0, #0xe4]
02cab93c  cbnz w8,0x02cab948
02cab940  bl 0x029f5bd0
02cab944  ldr x0,[x21]
02cab948  ldr x8,[x0, #0xb8]
02cab94c  ldr x8,[x8, #0x10]
02cab950  cbz x8,0x02cab98c
02cab954  ldr x8,[x8, #0x20]
02cab958  cbz x8,0x02cab98c
02cab95c  add w9,w19,w20, LSL #0x2
02cab960  ldr w10,[x8, #0x18]
02cab964  sdiv w11,w9,w10
02cab968  msub w9,w11,w10,w9
02cab96c  cmp w9,w10
02cab970  b.cs 0x02cab990
02cab974  add x8,x8,w9, SXTW  #0x3
02cab978  ldp x20,x19,[sp, #0x20]
02cab97c  ldp x22,x21,[sp, #0x10]
02cab980  ldr x0,[x8, #0x20]
02cab984  ldr x30,[sp], #0x30
02cab988  ret
02cab98c  bl 0x029f5cfc
02cab990  bl 0x029f5d04
