02b9dfd4  stp x30,x21,[sp, #-0x20]!
02b9dfd8  stp x20,x19,[sp, #0x10]
02b9dfdc  adrp x21,0x625b000
02b9dfe0  adrp x20,0x5e5e000
02b9dfe4  mov w19,w0
02b9dfe8  ldrb w8,[x21, #0x9e2]
02b9dfec  ldr x20,[x20, #0x4d0]
02b9dff0  tbnz w8,#0x0,0x02b9e008
02b9dff4  adrp x0,0x5e5e000
02b9dff8  ldr x0,[x0, #0x4d0]
02b9dffc  bl 0x029f5a50
02b9e000  mov w8,#0x1
02b9e004  strb w8,[x21, #0x9e2]
02b9e008  ldr x0,[x20]
02b9e00c  ldr w8,[x0, #0xe4]
02b9e010  cbnz w8,0x02b9e01c
02b9e014  bl 0x029f5bd0
02b9e018  ldr x0,[x20]
02b9e01c  ldr x8,[x0, #0xb8]
02b9e020  ldr x8,[x8, #0x8]
02b9e024  cbz x8,0x02b9e048
02b9e028  ldr w9,[x8, #0x18]
02b9e02c  cmp w9,w19
02b9e030  b.ls 0x02b9e04c
02b9e034  add x8,x8,w19, SXTW  #0x2
02b9e038  ldp x20,x19,[sp, #0x10]
02b9e03c  ldr w0,[x8, #0x20]
02b9e040  ldp x30,x21,[sp], #0x20
02b9e044  ret
02b9e048  bl 0x029f5cfc
02b9e04c  bl 0x029f5d04
