02c587b8  str x30,[sp, #-0x10]!
02c587bc  ldr x10,[x0, #0x88]
02c587c0  cbz x10,0x02c58810
02c587c4  ldr x9,[x10, #0x18]
02c587c8  cmp w9,#0x1
02c587cc  b.lt 0x02c58800
02c587d0  bic w8,w9,w9, ASR #0x1f
02c587d4  mov w0,wzr
02c587d8  and x9,x9,#0xffffffff
02c587dc  add x10,x10,#0x20
02c587e0  cbz x9,0x02c5880c
02c587e4  ldr w11,[x10], #0x4
02c587e8  sub x8,x8,#0x1
02c587ec  sub x9,x9,#0x1
02c587f0  cmn w11,#0x1
02c587f4  cinc w0,w0,ne
02c587f8  cbnz x8,0x02c587e0
02c587fc  b 0x02c58804
02c58800  mov w0,wzr
02c58804  ldr x30,[sp], #0x10
02c58808  ret
02c5880c  bl 0x029f5d04
02c58810  bl 0x029f5cfc
