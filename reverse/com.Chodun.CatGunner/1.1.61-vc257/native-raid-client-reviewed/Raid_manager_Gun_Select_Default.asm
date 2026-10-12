02c588c4  str x30,[sp, #-0x30]!
02c588c8  stp x22,x21,[sp, #0x10]
02c588cc  stp x20,x19,[sp, #0x20]
02c588d0  adrp x21,0x625c000
02c588d4  adrp x22,0x5e5e000
02c588d8  mov w19,w1
02c588dc  ldrb w8,[x21, #0x1af]
02c588e0  ldr x22,[x22, #0x70]
02c588e4  mov x20,x0
02c588e8  tbnz w8,#0x0,0x02c58900
02c588ec  adrp x0,0x5e5e000
02c588f0  ldr x0,[x0, #0x70]
02c588f4  bl 0x029f5a50
02c588f8  mov w8,#0x1
02c588fc  strb w8,[x21, #0x1af]
02c58900  ldr x0,[x22]
02c58904  ldr w8,[x0, #0xe4]
02c58908  cbnz w8,0x02c58910
02c5890c  bl 0x029f5bd0
02c58910  mov w0,w19
02c58914  bl 0x02c5808c
02c58918  cmn w0,#0x1
02c5891c  b.eq 0x02c5895c
02c58920  ldr x9,[x20, #0x88]
02c58924  cbz x9,0x02c5896c
02c58928  ldr w8,[x9, #0x18]
02c5892c  cmp w8,w19
02c58930  b.ls 0x02c58970
02c58934  sxtw x8,w19
02c58938  add x10,x9,x8, LSL #0x2
02c5893c  ldr x9,[x20, #0x90]
02c58940  str w0,[x10, #0x20]
02c58944  cbz x9,0x02c5896c
02c58948  ldr w10,[x9, #0x18]
02c5894c  cmp w10,w19
02c58950  b.ls 0x02c58970
02c58954  add x8,x9,x8, LSL #0x2
02c58958  str w19,[x8, #0x20]
02c5895c  ldp x20,x19,[sp, #0x20]
02c58960  ldp x22,x21,[sp, #0x10]
02c58964  ldr x30,[sp], #0x30
02c58968  ret
02c5896c  bl 0x029f5cfc
02c58970  bl 0x029f5d04
