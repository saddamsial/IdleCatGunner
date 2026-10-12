02c5704c  str x30,[sp, #-0x30]!
02c57050  stp x22,x21,[sp, #0x10]
02c57054  stp x20,x19,[sp, #0x20]
02c57058  adrp x20,0x625c000
02c5705c  mov w19,w0
02c57060  ldrb w8,[x20, #0x19d]
02c57064  tbnz w8,#0x0,0x02c5707c
02c57068  adrp x0,0x5e5e000
02c5706c  ldr x0,[x0, #0x70]
02c57070  bl 0x029f5a50
02c57074  mov w8,#0x1
02c57078  strb w8,[x20, #0x19d]
02c5707c  cmp w19,#0x1
02c57080  b.lt 0x02c570c0
02c57084  adrp x22,0x5e5e000
02c57088  mov w20,wzr
02c5708c  mov w21,#0x1
02c57090  ldr x22,[x22, #0x70]
02c57094  ldr x0,[x22]
02c57098  ldr w8,[x0, #0xe4]
02c5709c  cbnz w8,0x02c570a4
02c570a0  bl 0x029f5bd0
02c570a4  mov w0,w21
02c570a8  bl 0x02c56f80
02c570ac  add w21,w21,#0x1
02c570b0  add w20,w0,w20
02c570b4  cmp w21,w19
02c570b8  b.le 0x02c57094
02c570bc  b 0x02c570c4
02c570c0  mov w20,wzr
02c570c4  mov w0,w20
02c570c8  ldp x20,x19,[sp, #0x20]
02c570cc  ldp x22,x21,[sp, #0x10]
02c570d0  ldr x30,[sp], #0x30
02c570d4  ret
