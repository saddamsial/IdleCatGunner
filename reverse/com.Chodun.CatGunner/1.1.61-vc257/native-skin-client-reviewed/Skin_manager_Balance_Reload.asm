02ca789c  str x30,[sp, #-0x10]!
02ca78a0  ldr x8,[x0, #0x20]
02ca78a4  cbz x8,0x02ca792c
02ca78a8  ldr w9,[x8, #0x18]
02ca78ac  cmp w9,#0x1
02ca78b0  b.lt 0x02ca7924
02ca78b4  adrp x13,0x116f000
02ca78b8  bic w12,w9,w9, ASR #0x1f
02ca78bc  mov w10,wzr
02ca78c0  ldr d0,[x13, #0x668]
02ca78c4  mov w11,wzr
02ca78c8  mov w13,wzr
02ca78cc  cmp w9,w13
02ca78d0  b.eq 0x02ca7930
02ca78d4  sxtw x13,w13
02ca78d8  add x14,x8,x13, LSL #0x3
02ca78dc  ldr x15,[x14, #0x20]
02ca78e0  cbz x15,0x02ca792c
02ca78e4  dup v1.2S,w13
02ca78e8  ldr x14,[x0, #0x38]
02ca78ec  str w11,[x15, #0x10]
02ca78f0  mul v1.2S,v1.2S,v0.2S
02ca78f4  stur d1,[x15, #0x14]
02ca78f8  cbz x14,0x02ca792c
02ca78fc  ldr w15,[x14, #0x18]
02ca7900  cmp w13,w15
02ca7904  b.cs 0x02ca7930
02ca7908  add x14,x14,x13, LSL #0x2
02ca790c  add w13,w13,#0x1
02ca7910  add w11,w11,#0x10
02ca7914  cmp w12,w13
02ca7918  str w10,[x14, #0x20]
02ca791c  add w10,w10,#0x64
02ca7920  b.ne 0x02ca78cc
02ca7924  ldr x30,[sp], #0x10
02ca7928  ret
02ca792c  bl 0x029f5cfc
02ca7930  bl 0x029f5d04
