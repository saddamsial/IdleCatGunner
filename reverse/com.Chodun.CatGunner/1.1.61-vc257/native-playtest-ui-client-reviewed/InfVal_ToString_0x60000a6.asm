04657d64  str x30,[sp, #-0x30]!
04657d68  stp x22,x21,[sp, #0x10]
04657d6c  stp x20,x19,[sp, #0x20]
04657d70  adrp x21,0x6260000
04657d74  adrp x22,0x5e71000
04657d78  mov x19,x1
04657d7c  ldrb w8,[x21, #0xa2c]
04657d80  ldr x22,[x22, #0x8d8]
04657d84  mov x20,x0
04657d88  tbnz w8,#0x0,0x04657da0
04657d8c  adrp x0,0x5e71000
04657d90  ldr x0,[x0, #0x8d8]
04657d94  bl 0x029f5a50
04657d98  mov w8,#0x1
04657d9c  strb w8,[x21, #0xa2c]
04657da0  ldr x0,[x22]
04657da4  ldr w8,[x0, #0xe4]
04657da8  cbnz w8,0x04657db0
04657dac  bl 0x029f5bd0
04657db0  bl 0x046530c0
04657db4  mov w21,w0
04657db8  bl 0x04652ff8
04657dbc  mov x22,x0
04657dc0  bl 0x0465311c
04657dc4  mov w3,w0
04657dc8  mov x0,x20
04657dcc  mov w1,w21
04657dd0  mov x2,x22
04657dd4  mov x4,x19
04657dd8  ldp x20,x19,[sp, #0x20]
04657ddc  ldp x22,x21,[sp, #0x10]
04657de0  ldr x30,[sp], #0x30
04657de4  b 0x04653178
