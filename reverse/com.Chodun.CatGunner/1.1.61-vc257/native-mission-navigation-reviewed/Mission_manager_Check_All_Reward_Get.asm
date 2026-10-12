02ba6834  str x30,[sp, #-0x20]!
02ba6838  stp x20,x19,[sp, #0x10]
02ba683c  adrp x20,0x625b000
02ba6840  mov x19,x0
02ba6844  ldrb w8,[x20, #0xa4f]
02ba6848  tbnz w8,#0x0,0x02ba6860
02ba684c  adrp x0,0x5e5d000
02ba6850  ldr x0,[x0, #0xd50]
02ba6854  bl 0x029f5a50
02ba6858  mov w8,#0x1
02ba685c  strb w8,[x20, #0xa4f]
02ba6860  ldr x8,[x19, #0x38]
02ba6864  cbz x8,0x02ba692c
02ba6868  ldr w9,[x8, #0x18]
02ba686c  cmp w9,#0x1
02ba6870  b.lt 0x02ba689c
02ba6874  bic w10,w9,w9, ASR #0x1f
02ba6878  mov w11,wzr
02ba687c  cmp w9,w11
02ba6880  b.eq 0x02ba6928
02ba6884  add x12,x8,w11, SXTW 
02ba6888  ldrb w12,[x12, #0x20]
02ba688c  cbz w12,0x02ba691c
02ba6890  add w11,w11,#0x1
02ba6894  cmp w10,w11
02ba6898  b.ne 0x02ba687c
02ba689c  adrp x20,0x5e5d000
02ba68a0  ldr x20,[x20, #0xd50]
02ba68a4  ldr x0,[x20]
02ba68a8  ldr w8,[x0, #0xe4]
02ba68ac  cbnz w8,0x02ba68b8
02ba68b0  bl 0x029f5bd0
02ba68b4  ldr x0,[x20]
02ba68b8  ldr x8,[x0, #0xb8]
02ba68bc  ldrb w8,[x8]
02ba68c0  cbz w8,0x02ba6900
02ba68c4  ldr x8,[x19, #0x40]
02ba68c8  cbz x8,0x02ba692c
02ba68cc  ldr w9,[x8, #0x18]
02ba68d0  cmp w9,#0x1
02ba68d4  b.lt 0x02ba6900
02ba68d8  bic w10,w9,w9, ASR #0x1f
02ba68dc  mov w11,wzr
02ba68e0  cmp w9,w11
02ba68e4  b.eq 0x02ba6928
02ba68e8  add x12,x8,w11, SXTW 
02ba68ec  ldrb w12,[x12, #0x20]
02ba68f0  cbz w12,0x02ba691c
02ba68f4  add w11,w11,#0x1
02ba68f8  cmp w10,w11
02ba68fc  b.ne 0x02ba68e0
02ba6900  ldr x0,[x19, #0xe8]
02ba6904  cbz x0,0x02ba692c
02ba6908  ldp x20,x19,[sp, #0x10]
02ba690c  mov w1,#0x1
02ba6910  mov x2,xzr
02ba6914  ldr x30,[sp], #0x20
02ba6918  b 0x057dff3c
02ba691c  ldp x20,x19,[sp, #0x10]
02ba6920  ldr x30,[sp], #0x20
02ba6924  ret
02ba6928  bl 0x029f5d04
02ba692c  bl 0x029f5cfc
