02c9538c  cmp w0,#0x6
02c95390  b.hi 0x02c953a4
02c95394  adrp x8,0x11b0000
02c95398  add x8,x8,#0x538
02c9539c  ldr w0,[x8, w0, UXTW #0x2]
02c953a0  ret
02c953a4  mov w0,wzr
02c953a8  ret
