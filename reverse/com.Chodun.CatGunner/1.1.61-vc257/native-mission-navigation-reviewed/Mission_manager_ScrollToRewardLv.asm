02ba54cc  stp x30,x21,[sp, #-0x20]!
02ba54d0  stp x20,x19,[sp, #0x10]
02ba54d4  adrp x20,0x625b000
02ba54d8  adrp x21,0x5e5e000
02ba54dc  mov x19,x0
02ba54e0  ldrb w8,[x20, #0xa46]
02ba54e4  ldr x21,[x21, #0x740]
02ba54e8  tbnz w8,#0x0,0x02ba5500
02ba54ec  adrp x0,0x5e5e000
02ba54f0  ldr x0,[x0, #0x740]
02ba54f4  bl 0x029f5a50
02ba54f8  mov w8,#0x1
02ba54fc  strb w8,[x20, #0xa46]
02ba5500  ldr x0,[x21]
02ba5504  bl 0x029f5cec
02ba5508  mov w1,wzr
02ba550c  mov x2,xzr
02ba5510  mov x20,x0
02ba5514  bl 0x02c035b8
02ba5518  cbz x20,0x02ba553c
02ba551c  mov x0,x20
02ba5520  mov x1,x19
02ba5524  str x19,[x0, #0x20]!
02ba5528  bl 0x029f59f4
02ba552c  mov x0,x20
02ba5530  ldp x20,x19,[sp, #0x10]
02ba5534  ldp x30,x21,[sp], #0x20
02ba5538  ret
02ba553c  bl 0x029f5cfc
