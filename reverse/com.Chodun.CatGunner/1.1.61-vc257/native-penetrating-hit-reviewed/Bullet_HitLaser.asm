02c667f4  sub sp,sp,#0x90
02c667f8  str d10,[sp, #0x40]
02c667fc  stp d9,d8,[sp, #0x50]
02c66800  stp x30,x23,[sp, #0x60]
02c66804  stp x22,x21,[sp, #0x70]
02c66808  stp x20,x19,[sp, #0x80]
02c6680c  fmov s8,s2
02c66810  fmov s9,s1
02c66814  adrp x23,0x625c000
02c66818  fmov s10,s0
02c6681c  ldrb w8,[x23, #0x24f]
02c66820  mov w21,w3
02c66824  mov w22,w2
02c66828  mov x20,x1
02c6682c  mov x19,x0
02c66830  tbnz w8,#0x0,0x02c66860
02c66834  adrp x0,0x5e5d000
02c66838  ldr x0,[x0, #0x338]
02c6683c  bl 0x029f5a50
02c66840  adrp x0,0x5e63000
02c66844  ldr x0,[x0, #0x9e0]
02c66848  bl 0x029f5a50
02c6684c  adrp x0,0x5e5d000
02c66850  ldr x0,[x0, #0x368]
02c66854  bl 0x029f5a50
02c66858  mov w8,#0x1
02c6685c  strb w8,[x23, #0x24f]
02c66860  tbz w22,#0x0,0x02c66948
02c66864  ldr x0,[x19, #0xd0]
02c66868  cbz x0,0x02c6697c
02c6686c  adrp x8,0x5e63000
02c66870  mov w1,w21
02c66874  ldr x8,[x8, #0x9e0]
02c66878  ldr x2,[x8]
02c6687c  bl 0x04282ae4
02c66880  adrp x8,0x5e5d000
02c66884  ldr x8,[x8, #0x338]
02c66888  ldur q0,[x19, #0x28]
02c6688c  ldur q1,[x19, #0x38]
02c66890  ldr x21,[x19, #0x48]
02c66894  ldrb w22,[x19, #0x24]
02c66898  ldr x0,[x8]
02c6689c  stp q0,q1,[sp, #0x20]
02c668a0  ldr w8,[x0, #0xe4]
02c668a4  cbnz w8,0x02c668ac
02c668a8  bl 0x029f5bd0
02c668ac  ldp q0,q1,[sp, #0x20]
02c668b0  fmov s2,s8
02c668b4  cmp w22,#0x0
02c668b8  mov x1,sp
02c668bc  mov x0,x20
02c668c0  cset w3,ne
02c668c4  mov x2,x21
02c668c8  mov x4,xzr
02c668cc  stp q0,q1,[sp]
02c668d0  fmov s0,s10
02c668d4  fmov s1,s9
02c668d8  bl 0x02b7fba8
02c668dc  ldrb w8,[x19, #0xdc]
02c668e0  cbnz w8,0x02c66900
02c668e4  fmov s0,s10
02c668e8  fmov s1,s9
02c668ec  mov w8,#0x1
02c668f0  fmov s2,s8
02c668f4  mov x0,x19
02c668f8  strb w8,[x19, #0xdc]
02c668fc  bl 0x02c66180
02c66900  adrp x8,0x5e5d000
02c66904  ldr x8,[x8, #0x368]
02c66908  ldr x8,[x8]
02c6690c  ldr x8,[x8, #0xb8]
02c66910  ldr x8,[x8]
02c66914  cbz x8,0x02c6697c
02c66918  ldr w8,[x8, #0x20]
02c6691c  cmp w8,#0x5
02c66920  b.ne 0x02c6692c
02c66924  mov x0,x19
02c66928  bl 0x02c66330
02c6692c  ldp x20,x19,[sp, #0x80]
02c66930  ldr d10,[sp, #0x40]
02c66934  ldp x22,x21,[sp, #0x70]
02c66938  ldp x30,x23,[sp, #0x60]
02c6693c  ldp d9,d8,[sp, #0x50]
02c66940  add sp,sp,#0x90
02c66944  ret
02c66948  fmov s0,s10
02c6694c  fmov s1,s9
02c66950  mov x0,x19
02c66954  fmov s2,s8
02c66958  bl 0x02c66180
02c6695c  mov x0,x19
02c66960  ldp x20,x19,[sp, #0x80]
02c66964  ldp x22,x21,[sp, #0x70]
02c66968  ldr d10,[sp, #0x40]
02c6696c  ldp x30,x23,[sp, #0x60]
02c66970  ldp d9,d8,[sp, #0x50]
02c66974  add sp,sp,#0x90
02c66978  b 0x02c66330
02c6697c  bl 0x029f5cfc
