02c63e10  str x30,[sp, #-0x10]!
02c63e14  ldr x9,[x0, #0x20]
02c63e18  cbz x9,0x02c63e70
02c63e1c  ldr w8,[x9, #0x18]
02c63e20  cmp w8,#0x1
02c63e24  b.lt 0x02c63e5c
02c63e28  bic w11,w8,w8, ASR #0x1f
02c63e2c  mov w10,wzr
02c63e30  cmp w8,w10
02c63e34  b.eq 0x02c63e74
02c63e38  add x12,x9,w10, SXTW  #0x3
02c63e3c  ldr x12,[x12, #0x20]
02c63e40  cbz x12,0x02c63e70
02c63e44  ldrb w12,[x12, #0x49]
02c63e48  cbnz w12,0x02c63e60
02c63e4c  add w10,w10,#0x1
02c63e50  cmp w11,w10
02c63e54  b.ne 0x02c63e30
02c63e58  b 0x02c63e60
02c63e5c  mov w10,wzr
02c63e60  cmp w10,w8
02c63e64  cset w0,lt
02c63e68  ldr x30,[sp], #0x10
02c63e6c  ret
02c63e70  bl 0x029f5cfc
02c63e74  bl 0x029f5d04
