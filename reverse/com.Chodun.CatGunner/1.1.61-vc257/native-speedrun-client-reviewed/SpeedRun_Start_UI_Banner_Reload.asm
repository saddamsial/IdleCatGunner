02cabb04  stp x30,x21,[sp, #-0x20]!
02cabb08  stp x20,x19,[sp, #0x10]
02cabb0c  adrp x21,0x625c000
02cabb10  adrp x20,0x5e59000
02cabb14  mov x19,x0
02cabb18  ldrb w8,[x21, #0x511]
02cabb1c  ldr x20,[x20, #0x1c0]
02cabb20  tbnz w8,#0x0,0x02cabb44
02cabb24  adrp x0,0x5e59000
02cabb28  ldr x0,[x0, #0x1c0]
02cabb2c  bl 0x029f5a50
02cabb30  adrp x0,0x5e5e000
02cabb34  ldr x0,[x0, #0xb8]
02cabb38  bl 0x029f5a50
02cabb3c  mov w8,#0x1
02cabb40  strb w8,[x21, #0x511]
02cabb44  ldr x0,[x20]
02cabb48  ldr x20,[x19, #0x70]
02cabb4c  ldr w8,[x0, #0xe4]
02cabb50  cbnz w8,0x02cabb58
02cabb54  bl 0x029f5bd0
02cabb58  mov x0,x20
02cabb5c  mov x1,xzr
02cabb60  mov x2,xzr
02cabb64  bl 0x057dfa70
02cabb68  tbz w0,#0x0,0x02cabbb0
02cabb6c  adrp x8,0x5e5e000
02cabb70  ldr x8,[x8, #0xb8]
02cabb74  ldr x19,[x19, #0x70]
02cabb78  ldr x0,[x8]
02cabb7c  ldr w8,[x0, #0xe4]
02cabb80  cbnz w8,0x02cabb88
02cabb84  bl 0x029f5bd0
02cabb88  mov w0,#0x2
02cabb8c  mov x1,xzr
02cabb90  bl 0x02c9196c
02cabb94  cbz x19,0x02cabbbc
02cabb98  and w1,w0,#0x1
02cabb9c  mov x0,x19
02cabba0  mov x2,xzr
02cabba4  ldp x20,x19,[sp, #0x10]
02cabba8  ldp x30,x21,[sp], #0x20
02cabbac  b 0x057dff3c
02cabbb0  ldp x20,x19,[sp, #0x10]
02cabbb4  ldp x30,x21,[sp], #0x20
02cabbb8  ret
02cabbbc  bl 0x029f5cfc
