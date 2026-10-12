02ba4fd4  mov x8,x0
02ba4fd8  cmp w1,#0x1
02ba4fdc  mov w0,wzr
02ba4fe0  b.gt 0x02ba4ff8
02ba4fe4  cbz w1,0x02ba5010
02ba4fe8  cmp w1,#0x1
02ba4fec  b.ne 0x02ba501c
02ba4ff0  ldr w0,[x8, #0x54]
02ba4ff4  ret
02ba4ff8  cmp w1,#0x2
02ba4ffc  b.eq 0x02ba5018
02ba5000  cmp w1,#0x3
02ba5004  b.ne 0x02ba501c
02ba5008  ldr w0,[x8, #0x5c]
02ba500c  ret
02ba5010  ldr w0,[x8, #0x50]
02ba5014  ret
02ba5018  ldr w0,[x8, #0x58]
02ba501c  ret
