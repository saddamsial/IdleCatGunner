02c9895c  str x30,[sp, #-0x20]!
02c98960  stp x20,x19,[sp, #0x10]
02c98964  adrp x19,0x625c000
02c98968  adrp x20,0x5e5e000
02c9896c  ldrb w8,[x19, #0x46a]
02c98970  ldr x20,[x20, #0x70]
02c98974  tbnz w8,#0x0,0x02c989b0
02c98978  adrp x0,0x5e58000
02c9897c  ldr x0,[x0, #0xf08]
02c98980  bl 0x029f5a50
02c98984  adrp x0,0x5e59000
02c98988  ldr x0,[x0, #0x1c0]
02c9898c  bl 0x029f5a50
02c98990  adrp x0,0x5e5e000
02c98994  ldr x0,[x0, #0x70]
02c98998  bl 0x029f5a50
02c9899c  adrp x0,0x5e64000
02c989a0  ldr x0,[x0, #0x348]
02c989a4  bl 0x029f5a50
02c989a8  mov w8,#0x1
02c989ac  strb w8,[x19, #0x46a]
02c989b0  ldr x0,[x20]
02c989b4  adrp x19,0x5e59000
02c989b8  ldr w8,[x0, #0xe4]
02c989bc  ldr x19,[x19, #0x1c0]
02c989c0  cbnz w8,0x02c989cc
02c989c4  bl 0x029f5bd0
02c989c8  ldr x0,[x20]
02c989cc  ldr x8,[x19]
02c989d0  ldr x9,[x0, #0xb8]
02c989d4  ldr w10,[x8, #0xe4]
02c989d8  ldr x19,[x9]
02c989dc  cbnz w10,0x02c989e8
02c989e0  mov x0,x8
02c989e4  bl 0x029f5bd0
02c989e8  mov x0,x19
02c989ec  mov x1,xzr
02c989f0  mov x2,xzr
02c989f4  bl 0x057e14b4
02c989f8  tbz w0,#0x0,0x02c98a38
02c989fc  adrp x8,0x5e58000
02c98a00  adrp x19,0x5e64000
02c98a04  ldr x8,[x8, #0xf08]
02c98a08  ldr x0,[x8]
02c98a0c  ldr w8,[x0, #0xe4]
02c98a10  ldr x19,[x19, #0x348]
02c98a14  cbnz w8,0x02c98a1c
02c98a18  bl 0x029f5bd0
02c98a1c  ldr x0,[x19]
02c98a20  mov x1,xzr
02c98a24  bl 0x0579a8d0
02c98a28  ldp x20,x19,[sp, #0x10]
02c98a2c  mov w0,wzr
02c98a30  ldr x30,[sp], #0x20
02c98a34  ret
02c98a38  ldr x0,[x20]
02c98a3c  ldr w8,[x0, #0xe4]
02c98a40  cbnz w8,0x02c98a4c
02c98a44  bl 0x029f5bd0
02c98a48  ldr x0,[x20]
02c98a4c  ldr x8,[x0, #0xb8]
02c98a50  ldr x0,[x8]
02c98a54  cbz x0,0x02c98a68
02c98a58  ldp x20,x19,[sp, #0x10]
02c98a5c  mov x1,xzr
02c98a60  ldr x30,[sp], #0x20
02c98a64  b 0x02c59af4
02c98a68  bl 0x029f5cfc
