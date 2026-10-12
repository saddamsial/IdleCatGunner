02cac79c  fmov s0,w2
02cac7a0  movi v2.8B,#0x33
02cac7a4  adrp x8,0x1170000
02cac7a8  mov v0.S[0x1],w1
02cac7ac  shl v1.2S,v0.2S,0x8
02cac7b0  orr v0.8B,v1.8B,v0.8B
02cac7b4  bic v0.4H,#0xff
02cac7b8  shl v1.2S,v0.2S,0x4
02cac7bc  orr v0.8B,v1.8B,v0.8B
02cac7c0  bic v0.4H,#0xf0
02cac7c4  shl v1.2S,v0.2S,0x2
02cac7c8  orr v0.8B,v1.8B,v0.8B
02cac7cc  ldr d1,[x8, #0x770]
02cac7d0  and v0.8B,v0.8B,v2.8B
02cac7d4  fmov w9,s0
02cac7d8  ushl v1.2S,v0.2S,v1.2S
02cac7dc  lsl w8,w9,#0x1
02cac7e0  mov v0.S[0x0],w8
02cac7e4  adrp x8,0x1170000
02cac7e8  orr v0.8B,v1.8B,v0.8B
02cac7ec  ldr d1,[x8, #0x938]
02cac7f0  and v0.8B,v0.8B,v1.8B
02cac7f4  dup v1.2S,v0.S[0x1]
02cac7f8  orr v0.8B,v0.8B,v1.8B
02cac7fc  fmov w0,s0
02cac800  ret
