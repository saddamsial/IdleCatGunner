02c5fe20  str x30,[sp, #-0x10]!
02c5fe24  ldr x8,[x0, #0x20]
02c5fe28  cbz x8,0x02c5fe6c
02c5fe2c  ldr w9,[x8, #0x18]
02c5fe30  cmp w9,#0x1
02c5fe34  b.lt 0x02c5fe64
02c5fe38  bic w10,w9,w9, ASR #0x1f
02c5fe3c  mov w11,wzr
02c5fe40  cmp w9,w11
02c5fe44  b.eq 0x02c5fe70
02c5fe48  add x12,x8,w11, SXTW  #0x3
02c5fe4c  ldr x12,[x12, #0x20]
02c5fe50  cbz x12,0x02c5fe6c
02c5fe54  add w11,w11,#0x1
02c5fe58  strb wzr,[x12, #0x49]
02c5fe5c  cmp w10,w11
02c5fe60  b.ne 0x02c5fe40
02c5fe64  ldr x30,[sp], #0x10
02c5fe68  ret
02c5fe6c  bl 0x029f5cfc
02c5fe70  bl 0x029f5d04
