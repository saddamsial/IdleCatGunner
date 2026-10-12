02ba6b30  ldr w8,[x0, #0x48]
02ba6b34  fmov s0,0x3f800000
02ba6b38  cmp w8,w1
02ba6b3c  b.gt 0x02ba6b5c
02ba6b40  movi d0,#0x0
02ba6b44  b.ne 0x02ba6b5c
02ba6b48  ldr s0,[x0, #0x4c]
02ba6b4c  mov w8,#0x42c80000
02ba6b50  fmov s1,w8
02ba6b54  scvtf s0,s0
02ba6b58  fdiv s0,s0,s1
02ba6b5c  ret
